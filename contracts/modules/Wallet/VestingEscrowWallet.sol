pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "./IWallet.sol";

/**
 * @title Wallet for core vesting escrow functionality
 */
contract VestingEscrowWallet is IWallet {
    using SafeMath for uint256;

    bytes32 public constant ADMIN = "ADMIN";

    struct Schedule {
        // Name of the template
        bytes32 templateName;
        // Tokens that were already claimed
        uint256 claimedTokens;
        // Start time of the schedule
        uint256 startTime;
    }

    struct Template {
        // Total amount of tokens
        uint256 numberOfTokens;
        // Schedule duration (How long the schedule will last)
        uint256 duration;
        // Schedule frequency (It is a cliff time period)
        uint256 frequency;
    }

    // States used to represent the status of the schedule
    enum State {CREATED, STARTED, COMPLETED}
    // Number of tokens that are hold by the `this` contract but are unassigned to any schedule
    uint256 public unassignedTokens;
    // Address of the Treasury wallet. All of the unassigned token will transfer to that address.
    address public treasuryWallet;
    // List of all beneficiaries who have the schedules running/completed/created
    address[] public beneficiaries;

    // Holds schedules array corresponds to the affiliate/employee address
    mapping(address => Schedule[]) public schedules;
    // Holds template names array corresponds to the affiliate/employee address
    mapping(address => bytes32[]) internal userToTemplates;
    // Mapping use to store the indexes for different template names for a user. 
    // affiliate/employee address => template name => index
    mapping(address => mapping(bytes32 => uint256)) internal userToTemplateIndex;
    // Holds affiliate/employee addresses coressponds to the template name
    mapping(bytes32 => address[]) internal templateToUsers;
    // Mapping use to store the indexes for different users for a template.
    // template name => affiliate/employee address => index
    mapping(bytes32 => mapping(address => uint256)) internal templateToUserIndex;
    // Store the template details corresponds to the template name
    mapping(bytes32 => Template) templates;

    // List of all template names
    bytes32[] public templateNames;

    // Emit when new schedule is added
    event AddSchedule(
        address indexed _beneficiary,
        bytes32 _templateName,
        uint256 _startTime
    );
    // Emit when schedule is modified
    event ModifySchedule(
        address indexed _beneficiary,
        bytes32 _templateName,
        uint256 _startTime
    );
    // Emit when all schedules are revoked for user
    event RevokeAllSchedules(address indexed _beneficiary);
    // Emit when schedule is revoked
    event RevokeSchedule(address indexed _beneficiary, bytes32 _templateName);
    // Emit when tokes are deposited to wallet
    event DepositTokens(uint256 _numberOfTokens, address _sender);
    // Emit when all unassigned tokens are sent to treasury
    event SendToTreasury(uint256 _numberOfTokens, address _sender);
    // Emit when is sent tokes to user
    event SendTokens(address indexed _beneficiary, uint256 _numberOfTokens);
    // Emit when template is added
    event AddTemplate(bytes32 _name, uint256 _numberOfTokens, uint256 _duration, uint256 _frequency);
    // Emit when template is removed
    event RemoveTemplate(bytes32 _name);
    // Emit when the treasury wallet gets changed
    event TreasuryWalletChanged(address _newWallet, address _oldWallet);

    /**
     * @notice Constructor
     * @param _securityToken Address of the security token
     * @param _polyAddress Address of the polytoken
     */
    constructor (address _securityToken, address _polyAddress)
    public
    Module(_securityToken, _polyAddress)
    {
    }

    /**
     * @notice This function returns the signature of the configure function
     */
    function getInitFunction() public pure returns (bytes4) {
        return bytes4(keccak256("configure(address)"));
    }

    /**
     * @notice Use to intialize the treasury wallet address
     * @param _treasuryWallet Address of the treasury wallet
     */
    function configure(address _treasuryWallet) public onlyFactory {
        require(_treasuryWallet != address(0), "Invalid address");
        treasuryWallet = _treasuryWallet;
    }

    /**
     * @notice Use to change the treasury wallet address
     * @param _newTreasuryWallet Address of the treasury wallet
     */
    function changeTreasuryWallet(address _newTreasuryWallet) public onlyOwner {
        require(_newTreasuryWallet != address(0));
        emit TreasuryWalletChanged(_newTreasuryWallet, treasuryWallet);
        treasuryWallet = _newTreasuryWallet;
    }

    /**
     * @notice Used to deposit tokens from treasury
     */
    function depositTokens(uint256 _numberOfTokens) external withPerm(ADMIN) {
        _depositTokens(_numberOfTokens);
    }

    function _depositTokens(uint256 _numberOfTokens) internal {
        require(_numberOfTokens > 0, "Should be > 0");
        ISecurityToken(securityToken).transferFrom(msg.sender, address(this), _numberOfTokens);
        unassignedTokens = unassignedTokens.add(_numberOfTokens);
        emit DepositTokens(_numberOfTokens, msg.sender);
    }

    /**
     * @notice Sends unassigned tokens to treasury
     */
    function sendToTreasury() external withPerm(ADMIN) {
        uint256 amount = unassignedTokens;
        unassignedTokens = 0;
        ISecurityToken(securityToken).transfer(treasuryWallet, amount);
        emit SendToTreasury(amount, msg.sender);
    }

    /**
     * @notice Pushes available tokens to beneficiary
     * @param _beneficiary beneficiary's address
     */
    function pushAvailableTokens(address _beneficiary) public withPerm(ADMIN) {
        _sendTokens(_beneficiary);
    }

    /**
     * @notice Used to withdraw available tokens by beneficiary
     */
    function pullAvailableTokens() external {
        _sendTokens(msg.sender);
    }

    /**
     * @notice Add template
     * @param _name name of template
     * @param _numberOfTokens number of tokens
     * @param _duration vesting duration
     * @param _frequency vesting frequency
     */
    function addTemplate(bytes32 _name, uint256 _numberOfTokens, uint256 _duration, uint256 _frequency) external withPerm(ADMIN) {
        _addTemplate(_name, _numberOfTokens, _duration, _frequency);
    }

    function _addTemplate(bytes32 _name, uint256 _numberOfTokens, uint256 _duration, uint256 _frequency) internal {
        require(_name != bytes32(0), "Invalid name");
        require(!_isTemplateExists(_name), "Already exists");
        _validateTemplate(_numberOfTokens, _duration, _frequency);
        templateNames.push(_name);
        templates[_name] = Template(_numberOfTokens, _duration, _frequency);
        emit AddTemplate(_name, _numberOfTokens, _duration, _frequency);
    }

    /**
     * @notice Removes template
     * @param _name name of template
     */
    function removeTemplate(bytes32 _name) external withPerm(ADMIN) {
        require(_isTemplateExists(_name), "Already exists");
        require(templateToUsers[_name].length == 0);
        // delete template data
        delete templates[_name];
        uint256 i;
        for (i = 0; i < templateNames.length; i++) {
            if (_name == templateNames[i]) {
                break;
            }
        }
        if (i != templateNames.length - 1) {
            templateNames[i] = templateNames[templateNames.length - 1];
        }
        templateNames.length--;
        emit RemoveTemplate(_name);
    }

    /**
     * @notice Returns count of templates
     * @return count of templates
     */
    function getTemplateCount() external view returns(uint256) {
        return templateNames.length;
    }

    /**
     * @notice get the list of template names
     * @return bytes32 Array of template names
     */
    function getTemplateNames() external view returns(bytes32[]) {
        return templateNames;
    }

    /**
     * @notice Adds vesting schedules for each of beneficiary
     * @param _beneficiary beneficiary's addresses
     * @param _templateName name of the template that will be created
     * @param _numberOfTokens number of tokens
     * @param _duration vesting duration
     * @param _frequency vesting frequency
     * @param _startTime vesting start time
     */
    function addSchedule(
        address _beneficiary,
        bytes32 _templateName,
        uint256 _numberOfTokens,
        uint256 _duration,
        uint256 _frequency,
        uint256 _startTime
    )
        external
        withPerm(ADMIN)
    {
        _addSchedule(_beneficiary, _templateName, _numberOfTokens, _duration, _frequency, _startTime);
    }

    function _addSchedule(
        address _beneficiary,
        bytes32 _templateName,
        uint256 _numberOfTokens,
        uint256 _duration,
        uint256 _frequency,
        uint256 _startTime
    )
        internal
    {
        _addTemplate(_templateName, _numberOfTokens, _duration, _frequency);
        _addScheduleFromTemplate(_beneficiary, _templateName, _startTime);
    }

    /**
     * @notice Adds vesting schedules from template for each of beneficiary
     * @param _beneficiary beneficiary's addresses
     * @param _templateName name of the template
     * @param _startTime vesting start time
     */
    function addScheduleFromTemplate(address _beneficiary, bytes32 _templateName, uint256 _startTime) external withPerm(ADMIN) {
        _addScheduleFromTemplate(_beneficiary, _templateName, _startTime);
    }

    function _addScheduleFromTemplate(address _beneficiary, bytes32 _templateName, uint256 _startTime) internal {
        require(_beneficiary != address(0), "Invalid address");
        require(_isTemplateExists(_templateName));
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        require(
            schedules[_beneficiary].length == 0 ||
            schedules[_beneficiary][index].templateName != _templateName,
            "Already added"
        );
        require(_startTime >= now, "Date in the past");
        uint256 numberOfTokens = templates[_templateName].numberOfTokens;
        if (numberOfTokens > unassignedTokens) {
            _depositTokens(numberOfTokens.sub(unassignedTokens));
        }
        unassignedTokens = unassignedTokens.sub(numberOfTokens);
        //add beneficiary to the schedule list only if adding first schedule
        if (schedules[_beneficiary].length == 0) {
            beneficiaries.push(_beneficiary);
        }
        schedules[_beneficiary].push(Schedule(_templateName, 0, _startTime));
        userToTemplates[_beneficiary].push(_templateName);
        userToTemplateIndex[_beneficiary][_templateName] = schedules[_beneficiary].length - 1;
        templateToUsers[_templateName].push(_beneficiary);
        templateToUserIndex[_templateName][_beneficiary] = templateToUsers[_templateName].length - 1;
        emit AddSchedule(_beneficiary, _templateName, _startTime);
    }

    /**
     * @notice Modifies vesting schedules for each of beneficiary
     * @param _beneficiary beneficiary's addresses
     * @param _templateName name of the template
     * @param _startTime vesting start time
     */
    function modifySchedule(address _beneficiary, bytes32 _templateName, uint256 _startTime) public withPerm(ADMIN) {
        _modifySchedule(_beneficiary, _templateName, _startTime);
    }

    function _modifySchedule(address _beneficiary, bytes32 _templateName, uint256 _startTime) internal {
        _checkSchedule(_beneficiary, _templateName);
        require(_startTime > now, "Date in the past");
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        Schedule storage schedule = schedules[_beneficiary][index];
        /*solium-disable-next-line security/no-block-members*/
        require(now < schedule.startTime, "Schedule started");
        schedule.startTime = _startTime;
        emit ModifySchedule(_beneficiary, _templateName, _startTime);
    }

    /**
     * @notice Revokes beneficiary's schedule
     * @param _beneficiary beneficiary's address
     * @param _templateName name of the template
     */
    function revokeSchedule(address _beneficiary, bytes32 _templateName) external withPerm(ADMIN) {
        _checkSchedule(_beneficiary, _templateName);
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        _sendTokensPerSchedule(_beneficiary, index);
        uint256 releasedTokens = _getReleasedTokens(_beneficiary, index);
        unassignedTokens = unassignedTokens.add(templates[_templateName].numberOfTokens.sub(releasedTokens));
        _deleteUserToTemplates(_beneficiary, _templateName);
        _deleteTemplateToUsers(_beneficiary, _templateName);
        emit RevokeSchedule(_beneficiary, _templateName);
    }

    function _deleteUserToTemplates(address _beneficiary, bytes32 _templateName) internal {
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        Schedule[] storage userSchedules = schedules[_beneficiary];
        if (index != userSchedules.length - 1) {
            userSchedules[index] = userSchedules[userSchedules.length - 1];
            userToTemplates[_beneficiary][index] = userToTemplates[_beneficiary][userToTemplates[_beneficiary].length - 1];
            userToTemplateIndex[_beneficiary][userSchedules[index].templateName] = index;
        }
        userSchedules.length--;
        userToTemplates[_beneficiary].length--;
        delete userToTemplateIndex[_beneficiary][_templateName];
    }

    function _deleteTemplateToUsers(address _beneficiary, bytes32 _templateName) internal {
        uint256 templateIndex = templateToUserIndex[_templateName][_beneficiary];
        if (templateIndex != templateToUsers[_templateName].length - 1) {
            templateToUsers[_templateName][templateIndex] = templateToUsers[_templateName][templateToUsers[_templateName].length - 1];
            templateToUserIndex[_templateName][templateToUsers[_templateName][templateIndex]] = templateIndex;
        }
        templateToUsers[_templateName].length--;
        delete templateToUserIndex[_templateName][_beneficiary];
    }

    /**
     * @notice Revokes all beneficiary's schedules
     * @param _beneficiary beneficiary's address
     */
    function revokeAllSchedules(address _beneficiary) public withPerm(ADMIN) {
        _revokeAllSchedules(_beneficiary);
    }

    function _revokeAllSchedules(address _beneficiary) internal {
        require(_beneficiary != address(0), "Invalid address");
        _sendTokens(_beneficiary);
        Schedule[] storage userSchedules = schedules[_beneficiary];
        for (uint256 i = 0; i < userSchedules.length; i++) {
            uint256 releasedTokens = _getReleasedTokens(_beneficiary, i);
            Template memory template = templates[userSchedules[i].templateName];
            unassignedTokens = unassignedTokens.add(template.numberOfTokens.sub(releasedTokens));
            delete userToTemplateIndex[_beneficiary][userSchedules[i].templateName];
            _deleteTemplateToUsers(_beneficiary, userSchedules[i].templateName);
        }
        delete schedules[_beneficiary];
        delete userToTemplates[_beneficiary];
        emit RevokeAllSchedules(_beneficiary);
    }

    /**
     * @notice Returns beneficiary's schedule
     * @param _beneficiary beneficiary's address
     * @param _templateName name of the template
     * @return beneficiary's schedule
     */
    function getSchedule(address _beneficiary, bytes32 _templateName) external view returns(uint256, uint256, uint256, uint256, uint256, State) {
        _checkSchedule(_beneficiary, _templateName);
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        Schedule memory schedule = schedules[_beneficiary][index];
        return (
            templates[schedule.templateName].numberOfTokens,
            templates[schedule.templateName].duration,
            templates[schedule.templateName].frequency,
            schedule.startTime,
            schedule.claimedTokens,
            _getScheduleState(_beneficiary, _templateName)
        );
    }

    function _getScheduleState(address _beneficiary, bytes32 _templateName) internal view returns(State) {
        _checkSchedule(_beneficiary, _templateName);
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        Schedule memory schedule = schedules[_beneficiary][index];
        if (now < schedule.startTime) {
            return State.CREATED;
        } else if (now > schedule.startTime && now < schedule.startTime.add(templates[_templateName].duration)) {
            return State.STARTED;
        } else {
            return State.COMPLETED;
        }
    }

    /**
     * @notice Returns list of template names
     * @param _beneficiary beneficiary's address
     * @return list of template names
     */
    function getTemplateNames(address _beneficiary) external view returns(bytes32[]) {
        require(_beneficiary != address(0), "Invalid address");
        return userToTemplates[_beneficiary];
    }

    /**
     * @notice Returns count of beneficiary's schedules
     * @param _beneficiary beneficiary's address
     * @return count of beneficiary's schedules
     */
    function getScheduleCount(address _beneficiary) external view returns(uint256) {
        require(_beneficiary != address(0), "Invalid address");
        return schedules[_beneficiary].length;
    }

    function _getAvailableTokens(address _beneficiary, uint256 _index) internal view returns(uint256) {
        Schedule memory schedule = schedules[_beneficiary][_index];
        uint256 releasedTokens = _getReleasedTokens(_beneficiary, _index);
        return releasedTokens.sub(schedule.claimedTokens);
    }

    function _getReleasedTokens(address _beneficiary, uint256 _index) internal view returns(uint256) {
        Schedule memory schedule = schedules[_beneficiary][_index];
        Template memory template = templates[schedule.templateName];
        /*solium-disable-next-line security/no-block-members*/
        if (now > schedule.startTime) {
            uint256 periodCount = template.duration.div(template.frequency);
            /*solium-disable-next-line security/no-block-members*/
            uint256 periodNumber = (now.sub(schedule.startTime)).div(template.frequency);
            if (periodNumber > periodCount) {
                periodNumber = periodCount;
            }
            return template.numberOfTokens.mul(periodNumber).div(periodCount);
        } else {
            return 0;
        }
    }

    /**
     * @notice Used to remove beneficiaries without schedules
     * TODO: Improve the Trim beneficiary logic -- remain because of size of bytecode hit the limit
     */
    function trimBeneficiaries() external withPerm(ADMIN) {
        for (uint256 i = 0; i < beneficiaries.length; i++) {
            if (schedules[beneficiaries[i]].length == 0) {
                if (i != beneficiaries.length - 1) {
                    beneficiaries[i] = beneficiaries[beneficiaries.length - 1];
                }
                beneficiaries.length--;
            }
        }
    }

    /**
     * @notice Used to bulk send available tokens for each of beneficiaries
     * @param _beneficiaries array of beneficiary's addresses
     */
    function pushAvailableTokensMulti(address[] _beneficiaries) external withPerm(ADMIN) {
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            pushAvailableTokens(_beneficiaries[i]);
        }
    }

    /**
     * @notice Used to bulk add vesting schedules for each of beneficiaries
     * @param _beneficiaries array of beneficiary's addresses
     * @param _templateNames array of the template names
     * @param _numberOfTokens array of number of tokens
     * @param _durations array of vesting duration
     * @param _frequencies array of vesting frequency
     * @param _startTimes array of vesting start time
     */
    function addScheduleMulti(
        address[] _beneficiaries,
        bytes32[] _templateNames,
        uint256[] _numberOfTokens,
        uint256[] _durations,
        uint256[] _frequencies,
        uint256[] _startTimes
    )
        public
        withPerm(ADMIN)
    {
        require(
            _beneficiaries.length == _templateNames.length && /*solium-disable-line operator-whitespace*/
            _beneficiaries.length == _numberOfTokens.length && /*solium-disable-line operator-whitespace*/
            _beneficiaries.length == _durations.length && /*solium-disable-line operator-whitespace*/
            _beneficiaries.length == _frequencies.length && /*solium-disable-line operator-whitespace*/
            _beneficiaries.length == _startTimes.length,
            "Arrays sizes mismatch"
        );
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            _addSchedule(_beneficiaries[i], _templateNames[i], _numberOfTokens[i], _durations[i], _frequencies[i], _startTimes[i]);
        }
    }

    /**
     * @notice Used to bulk add vesting schedules from template for each of beneficiaries
     * @param _beneficiaries array of beneficiary's addresses
     * @param _templateNames array of the template names
     * @param _startTimes array of vesting start time
     */
    function addScheduleFromTemplateMulti(address[] _beneficiaries, bytes32[] _templateNames, uint256[] _startTimes) external withPerm(ADMIN) {
        require(_beneficiaries.length == _templateNames.length && _beneficiaries.length == _startTimes.length, "Arrays sizes mismatch");
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            _addScheduleFromTemplate(_beneficiaries[i], _templateNames[i], _startTimes[i]);
        }
    }

    /**
     * @notice Used to bulk revoke vesting schedules for each of beneficiaries
     * @param _beneficiaries array of beneficiary's addresses
     */
    function revokeSchedulesMulti(address[] _beneficiaries) external withPerm(ADMIN) {
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            _revokeAllSchedules(_beneficiaries[i]);
        }
    }

    /**
     * @notice Used to bulk modify vesting schedules for each of beneficiaries
     * @param _beneficiaries array of beneficiary's addresses
     * @param _templateNames array of the template names
     * @param _startTimes array of vesting start time
     */
    function modifyScheduleMulti(
        address[] _beneficiaries,
        bytes32[] _templateNames,
        uint256[] _startTimes
    )
        public
        withPerm(ADMIN)
    {
        require(
            _beneficiaries.length == _templateNames.length && /*solium-disable-line operator-whitespace*/
            _beneficiaries.length == _startTimes.length,
            "Arrays sizes mismatch"
        );
        for (uint256 i = 0; i < _beneficiaries.length; i++) {
            _modifySchedule(_beneficiaries[i], _templateNames[i], _startTimes[i]);
        }
    }

    function _checkSchedule(address _beneficiary, bytes32 _templateName) internal view {
        require(_beneficiary != address(0), "Invalid address");
        uint256 index = userToTemplateIndex[_beneficiary][_templateName];
        require(
            index < schedules[_beneficiary].length &&
            schedules[_beneficiary][index].templateName == _templateName,
            "Schedule not found"
        );
    }

    function _isTemplateExists(bytes32 _name) internal view returns(bool) {
        return templates[_name].numberOfTokens > 0;
    }

    function _validateTemplate(uint256 _numberOfTokens, uint256 _duration, uint256 _frequency) internal view {
        require(_numberOfTokens > 0, "Zero amount");
        require(_duration % _frequency == 0, "Invalid frequency");
        uint256 periodCount = _duration.div(_frequency);
        require(_numberOfTokens % periodCount == 0);
        uint256 amountPerPeriod = _numberOfTokens.div(periodCount);
        require(amountPerPeriod % ISecurityToken(securityToken).granularity() == 0, "Invalid granularity");
    }

    function _sendTokens(address _beneficiary) internal {
        for (uint256 i = 0; i < schedules[_beneficiary].length; i++) {
            _sendTokensPerSchedule(_beneficiary, i);
        }
    }

    function _sendTokensPerSchedule(address _beneficiary, uint256 _index) internal {
        uint256 amount = _getAvailableTokens(_beneficiary, _index);
        if (amount > 0) {
            schedules[_beneficiary][_index].claimedTokens = schedules[_beneficiary][_index].claimedTokens.add(amount);
            ISecurityToken(securityToken).transfer(_beneficiary, amount);
            emit SendTokens(_beneficiary, amount);
        }
    }

    /**
     * @notice Return the permissions flag that are associated with VestingEscrowWallet
     */
    function getPermissions() public view returns(bytes32[]) {
        bytes32[] memory allPermissions = new bytes32[](1);
        allPermissions[0] = ADMIN;
        return allPermissions;
    }

}
