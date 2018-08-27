pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/math/SafeMath.sol";
import "./tokens/SecurityToken.sol";
import "./interfaces/ISTProxy.sol";
import "./interfaces/ISecurityTokenRegistry.sol";
import "./storage/EternalStorage.sol";
import "./helpers/Util.sol";

/**
 * @title Registry contract for issuers to register their security tokens
 */
contract SecurityTokenRegistryV2 is ISecurityTokenRegistry, Util, EternalStorage {
    
    using SafeMath for uint256;

    // Emit when changeSecurityLaunchFee is called
    event LogChangeSecurityLaunchFee(uint256 _oldFee, uint256 _newFee);
    // Emit at the time of launching of new security token
    event LogNewSecurityToken(string _ticker, address indexed _securityTokenAddress, address indexed _owner);
    // Emit when already deployed securityToken added into the Polymath ecosystem
    event LogAddCustomSecurityToken(string _name, string _symbol, address _securityToken, uint256 _addedAt);
    // Emit after the symbol registration
    event LogRegisterTicker(address indexed _owner, string _symbol, string _name, bytes32 _swarmHash, uint256 indexed _timestamp);
    // Emit when the token symbol expiry get changed
    event LogChangeExpiryLimit(uint256 _oldExpiry, uint256 _newExpiry);
    // Emit when changeTickerRegistrationFee is called
    event LogChangeTickerRegistrationFee(uint256 _oldFee, uint256 _newFee);
    // Emit when oracle address get changed
    event LogChangeOracle(bytes32 _currency, bytes32 _denominatedCurrency, address _newOracle, address _oldOracle, uint256 _now);
    // Emit when ownership get renounced
    event OwnershipRenounced(address indexed previousOwner);
    // Emit when ownership get transferred 
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    // Emit when ecosystem get paused
    event Pause(uint256 _timestammp);
     // Emit when ecosystem get unpaused
    event Unpause(uint256 _timestamp);

   /**
    * @dev Throws if called by any account other than the owner.
    */
    modifier onlyOwner() {
        require(msg.sender == addressStorage[keccak256(abi.encodePacked("owner"))]);
        _;
    }

    /**
    * @notice Modifier to make a function callable only when the contract is not paused.
    */
    modifier whenNotPaused() {
        require(!boolStorage[keccak256(abi.encodePacked("paused"))], "Contract is paused");
        _;
    }

    /**
    * @notice Modifier to make a function callable only when the contract is paused.
    */
    modifier whenPaused() {
        require(boolStorage[keccak256(abi.encodePacked("paused"))], "Contract is not paused");
        _;
    }

    // Constructor
    constructor () public
    {

    }

    function initialize(address _stVersionProxy, uint256 _stLaunchFee, uint256 _tickerRegFee, address _polyToken, address _owner) payable public {
        require(!boolStorage[keccak256(abi.encodePacked('flag'))]);
        require(_stVersionProxy != address(0) && _polyToken != address(0) && _owner != address(0), "Input address should not be 0x");
        require(_stLaunchFee != 0 && _tickerRegFee != 0, "Input fees should not be 0x");
        addressStorage[keccak256(abi.encodePacked("polyToken"))] = _polyToken;
        uintStorage[keccak256(abi.encodePacked('stLaunchFee'))] = _stLaunchFee;
        uintStorage[keccak256(abi.encodePacked('tickerRegFee'))] = _tickerRegFee;
        uintStorage[keccak256(abi.encodePacked('expiryLimit'))] = 15 * 1 days;
        boolStorage[keccak256(abi.encodePacked("paused"))] = false;
        addressStorage[keccak256(abi.encodePacked("owner"))] = _owner;
        _setProtocolVersion(_stVersionProxy, "0.0.1");
        boolStorage[keccak256(abi.encodePacked('flag'))] = true;
    }

    /**
     * @notice Creates a new Security Token and saves it to the registry
     * @param _name Name of the token
     * @param _symbol Ticker symbol of the security token
     * @param _tokenDetails off-chain details of the token
     * @param _divisible Set to true if token is divisible
     */
    function generateSecurityToken(string _name, string _symbol, string _tokenDetails, bool _divisible) external whenNotPaused {
        require(bytes(_name).length > 0 && bytes(_symbol).length > 0, "Name and Symbol string length should be greater than 0");
        require(_checkValidity(_symbol, msg.sender, _name), "Trying to use non-valid symbol");
        if(uintStorage[keccak256(abi.encodePacked('stLaunchFee'))] > 0)
            require(ERC20(addressStorage[keccak256(abi.encodePacked("polyToken"))]).transferFrom(msg.sender, address(this), uintStorage[keccak256(abi.encodePacked('stLaunchFee'))]), "Failed transferFrom because of sufficent Allowance is not provided");
        string memory symbol = upper(_symbol);
        address newSecurityTokenAddress = ISTProxy(addressStorage[keccak256(abi.encodePacked('protocolVersionST', bytes32Storage[keccak256(abi.encodePacked('protocolVersion'))]))]).deployToken(
            _name,
            symbol,
            18,
            _tokenDetails,
            msg.sender,
            _divisible,
            addressStorage[keccak256(abi.encodePacked("polymathRegistry"))]
        );
        stringStorage[keccak256(abi.encodePacked("securityTokens", newSecurityTokenAddress, "symbol"))] = symbol;
        stringStorage[keccak256(abi.encodePacked("securityTokens", newSecurityTokenAddress, "tokenDetails"))] = _tokenDetails;
        addressStorage[keccak256(abi.encodePacked("symbols", symbol))] = newSecurityTokenAddress;
        emit LogNewSecurityToken(symbol, newSecurityTokenAddress, msg.sender);
    }

    /**
     * @notice Add a new custom (Token should follow the ISecurityToken interface) Security Token and saves it to the registry
     * @param _name Name of the token
     * @param _symbol Ticker symbol of the security token
     * @param _owner Owner of the token
     * @param _securityToken Address of the securityToken
     * @param _tokenDetails off-chain details of the token
     * @param _swarmHash off-chain details about the issuer company
     */
    function addCustomSecurityToken(string _name, string _symbol, address _owner, address _securityToken, string _tokenDetails, bytes32 _swarmHash) external onlyOwner whenNotPaused {
        require(bytes(_name).length > 0 && bytes(_symbol).length > 0, "Name and Symbol string length should be greater than 0");
        string memory symbol = upper(_symbol);
        require(_securityToken != address(0) && addressStorage[keccak256(abi.encodePacked("symbols", symbol))] == address(0), "Symbol is already at the polymath network or entered security token address is 0x");
        require(_owner != address(0));
        require(!_isReserved(symbol, _owner, _name, _swarmHash), "Trying to use non-valid symbol");
        addressStorage[keccak256(abi.encodePacked("symbols", symbol))] = _securityToken;
        stringStorage[keccak256(abi.encodePacked("securityTokens", _securityToken, "symbol"))] = symbol;
        stringStorage[keccak256(abi.encodePacked("securityTokens", _securityToken, "tokenDetails"))] = _tokenDetails;
        emit LogAddCustomSecurityToken(_name, symbol, _securityToken, now);
    }

    /**
    * @notice Changes the protocol version and the SecurityToken contract
    * @notice Used only by Polymath to upgrade the SecurityToken contract and add more functionalities to future versions
    * @notice Changing versions does not affect existing tokens.
    */
    function setProtocolVersion(address _stVersionProxyAddress, bytes32 _version) public onlyOwner {
        _setProtocolVersion(_stVersionProxyAddress, _version);
    }

    /**
    * @notice Changes the protocol version and the SecurityToken contract
    * @notice Used only by Polymath to upgrade the SecurityToken contract and add more functionalities to future versions
    * @notice Changing versions does not affect existing tokens.
    */
    function _setProtocolVersion(address _stVersionProxyAddress, bytes32 _version) internal {
        bytes32Storage[keccak256(abi.encodePacked('protocolVersion'))] = _version;
        addressStorage[keccak256(abi.encodePacked('protocolVersionST', bytes32Storage[keccak256(abi.encodePacked('protocolVersion'))]))] = _stVersionProxyAddress;
    }

    //////////////////////////////
    ///////// Get Functions
    //////////////////////////////
    /**
     * @notice Get security token address by ticker name
     * @param _symbol Symbol of the Scurity token
     * @return address
     */
    function getSecurityTokenAddress(string _symbol) external view returns (address) {
        string memory __symbol = upper(_symbol);
        return addressStorage[keccak256(abi.encodePacked("symbols", __symbol))];
    }

     /**
     * @notice Get security token data by its address
     * @param _securityToken Address of the Scurity token
     * @return string
     * @return address
     * @return string
     */
    function getSecurityTokenData(address _securityToken) external view returns (string, address, string) {
        return (
            stringStorage[keccak256(abi.encodePacked("securityTokens", _securityToken, "symbol"))],
            Ownable(_securityToken).owner(),
            stringStorage[keccak256(abi.encodePacked("securityTokens", _securityToken, "tokenDetails"))]
        );
    }

    /**
    * @notice Check that Security Token is registered
    * @param _securityToken Address of the Scurity token
    * @return bool
    */
    function isSecurityToken(address _securityToken) external view returns (bool) {
        return (keccak256(abi.encodePacked(bytes(stringStorage[keccak256(abi.encodePacked("securityTokens", _securityToken, "symbol"))]))) != keccak256(""));
    }

    /**
     * @notice set the ticker registration fee in POLY tokens
     * @param _stLaunchFee registration fee in POLY tokens (base 18 decimals)
     */
    function changeSecurityLaunchFee(uint256 _stLaunchFee) external onlyOwner {
        require(uintStorage[keccak256(abi.encodePacked('stLaunchFee'))] != _stLaunchFee);
        emit LogChangeSecurityLaunchFee(uintStorage[keccak256(abi.encodePacked('stLaunchFee'))], _stLaunchFee);
        uintStorage[keccak256(abi.encodePacked('stLaunchFee'))] = _stLaunchFee;
    }

    /**
     * @notice Register the token symbol for its particular owner
     * @notice Once the token symbol is registered to its owner then no other issuer can claim
     * @notice its ownership. If the symbol expires and its issuer hasn't used it, then someone else can take it.
     * @param _symbol token symbol
     * @param _tokenName Name of the token
     * @param _owner Address of the owner of the token
     * @param _swarmHash Off-chain details of the issuer and token
     */
    function registerTicker(address _owner, string _symbol, string _tokenName, bytes32 _swarmHash) public whenNotPaused {
        require(_owner != address(0), "Owner should not be 0x");
        require(bytes(_symbol).length > 0 && bytes(_symbol).length <= 10, "Ticker length should always between 0 & 10");
        if(uintStorage[keccak256(abi.encodePacked('tickerRegFee'))] > 0)
            require(ERC20(addressStorage[keccak256(abi.encodePacked("polyToken"))]).transferFrom(msg.sender, address(this), uintStorage[keccak256(abi.encodePacked('tickerRegFee'))]), "Failed transferFrom because of sufficent Allowance is not provided");
        string memory symbol = upper(_symbol);
        require(_expiryCheck(symbol), "Ticker is already reserved");
        _storeSymbolDetails(symbol, _owner, now, _tokenName, _swarmHash, false);
        emit LogRegisterTicker (_owner, symbol, _tokenName, _swarmHash, now);
    }

    /**
     * @notice Change the expiry time for the token symbol
     * @param _newExpiry new time period for token symbol expiry
     */
    function changeExpiryLimit(uint256 _newExpiry) public onlyOwner {
        require(_newExpiry >= 1 days, "Expiry should greater than or equal to 1 day");
        emit LogChangeExpiryLimit(uintStorage[keccak256(abi.encodePacked('expiryLimit'))], _newExpiry);
        uintStorage[keccak256(abi.encodePacked('expiryLimit'))] = _newExpiry;
    }

    /**
     * @notice Check the validity of the symbol
     * @param _symbol token symbol
     * @param _owner address of the owner
     * @param _tokenName Name of the token
     * @return bool
     */
    function _checkValidity(string _symbol, address _owner, string _tokenName) internal returns(bool) {
        string memory symbol = upper(_symbol);
        require(boolStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "status"))] != true, "Symbol status should not equal to true");
        require(addressStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "owner"))] == _owner, "Owner of the symbol should matched with the requested issuer address");
        require(uintStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "timestamp"))].add(uintStorage[keccak256(abi.encodePacked('expiryLimit'))]) >= now, "Ticker should not be expired");
        stringStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "tokenName"))] = _tokenName;
        boolStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "status"))] = true;
        return true;
    }

    /**
     * @notice Check the symbol is reserved or not
     * @param _symbol Symbol of the token
     * @param _owner Owner of the token
     * @param _tokenName Name of the token
     * @param _swarmHash off-chain hash
     * @return bool
     */
     function _isReserved(string _symbol, address _owner, string _tokenName, bytes32 _swarmHash) internal returns(bool) {
        string memory symbol = upper(_symbol);
        if (addressStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "owner"))] == _owner && ! _expiryCheck(symbol)) {
            boolStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "status"))] = true;
            return false;
        }
        else if (addressStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "owner"))] == address(0) || _expiryCheck(symbol)) {
            _storeSymbolDetails(symbol, _owner, now, _tokenName, _swarmHash, false);
            emit LogRegisterTicker (_owner, symbol, _tokenName, _swarmHash, now);
            return false;
        } else
            return true;
     }

    /**
     * @notice Returns the owner and timestamp for a given symbol
     * @param _symbol symbol
     * @return address
     * @return uint256
     * @return string
     * @return bytes32
     * @return bool
     */
    function getDetails(string _symbol) external view returns (address, uint256, string, bytes32, bool) {
        string memory symbol = upper(_symbol);
        if (boolStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "status"))] == true || uintStorage[keccak256(abi.encodePacked("registeredSymbols", symbol, "timestamp"))].add(uintStorage[keccak256(abi.encodePacked('expiryLimit'))]) > now) {
            return
            (
                addressStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "owner"))],
                uintStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "timestamp"))],
                stringStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "tokenName"))],
                bytes32Storage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "swarmHash"))],
                boolStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "status"))]
            );
        }else
            return (address(0), uint256(0), "", bytes32(0), false);
    }

    /**
     * @notice To re-initialize the token symbol details if symbol validity expires
     * @param _symbol token symbol
     * @return bool
     */
    function _expiryCheck(string _symbol) internal returns(bool) {
        if (addressStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "owner"))] != address(0)) {
            if (now > uintStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "timestamp"))].add(uintStorage[keccak256(abi.encodePacked('expiryLimit'))]) && boolStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "status"))] != true) {
                _storeSymbolDetails(_symbol, address(0), uint256(0), "", bytes32(0), false);
                return true;
            } else
                return false;
        }
        return true;
    }

    /**
     * @notice Internal function use to store the symbol details
     */
    function _storeSymbolDetails(string _symbol, address _owner, uint256 _timestamp, string _tokenName, bytes32 _swarmHash, bool _status) internal {
        addressStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "owner"))] = _owner;
        uintStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "timestamp"))] = _timestamp;
        stringStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "tokenName"))] = _tokenName;
        bytes32Storage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "swarmHash"))] = _swarmHash;
        boolStorage[keccak256(abi.encodePacked("registeredSymbols", _symbol, "status"))] = _status;
    }

    /**
     * @notice set the ticker registration fee in POLY tokens
     * @param _tickerRegFee registration fee in POLY tokens (base 18 decimals)
     */
    function changeTickerRegistrationFee(uint256 _tickerRegFee) external onlyOwner {
        require(uintStorage[keccak256(abi.encodePacked('tickerRegFee'))] != _tickerRegFee);
        emit LogChangeTickerRegistrationFee(uintStorage[keccak256(abi.encodePacked('tickerRegFee'))], _tickerRegFee);
        uintStorage[keccak256(abi.encodePacked('tickerRegFee'))] = _tickerRegFee;
    }

    /**
    * @notice Reclaim all ERC20Basic compatible tokens
    * @param _tokenContract The address of the token contract
    */
    function reclaimERC20(address _tokenContract) external onlyOwner {
        require(_tokenContract != address(0));
        ERC20Basic token = ERC20Basic(_tokenContract);
        uint256 balance = token.balanceOf(address(this));
        require(token.transfer(addressStorage[keccak256(abi.encodePacked("owner"))], balance));
    }

   /**
    * @dev Allows the current owner to relinquish control of the contract.
    */
    function renounceOwnership() public onlyOwner {
        emit OwnershipRenounced(addressStorage[keccak256(abi.encodePacked("owner"))]);
        addressStorage[keccak256(abi.encodePacked("owner"))] = address(0);
    }

   /**
    * @dev Allows the current owner to transfer control of the contract to a newOwner.
    * @param _newOwner The address to transfer ownership to.
    */
    function transferOwnership(address _newOwner) public onlyOwner {
        _transferOwnership(_newOwner);
    }

   /**
    * @dev Transfers control of the contract to a newOwner.
    * @param _newOwner The address to transfer ownership to.
    */
    function _transferOwnership(address _newOwner) internal {
        require(_newOwner != address(0));
        emit OwnershipTransferred(addressStorage[keccak256(abi.encodePacked("owner"))], _newOwner);
        addressStorage[keccak256(abi.encodePacked("owner"))] = _newOwner;
    }

   /**
    * @notice called by the owner to pause, triggers stopped state
    */
    function pause() external whenNotPaused onlyOwner {
        boolStorage[keccak256(abi.encodePacked("paused"))] = true;
        emit Pause(now);
    }

    /**
    * @notice called by the owner to unpause, returns to normal state
    */
    function unpause() external whenPaused onlyOwner {
        boolStorage[keccak256(abi.encodePacked("paused"))] = false;
        emit Unpause(now);
    }
 
}
