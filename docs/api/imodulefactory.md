---
id: version-3.0.0-IModuleFactory
title: IModuleFactory
original_id: IModuleFactory
---

# Interface that every module factory contract should implement \(IModuleFactory.sol\)

View Source: [contracts/interfaces/IModuleFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IModuleFactory.sol)

**↘ Derived Contracts:** [**ModuleFactory**](modulefactory.md)

**IModuleFactory**

**Events**

```javascript
event ChangeSetupCost(uint256  _oldSetupCost, uint256  _newSetupCost);
event ChangeCostType(bool  _isOldCostInPoly, bool  _isNewCostInPoly);
event GenerateModuleFromFactory(address  _module, bytes32 indexed _moduleName, address indexed _moduleFactory, address  _creator, uint256  _setupCost, uint256  _setupCostInPoly);
event ChangeSTVersionBound(string  _boundType, uint8  _major, uint8  _minor, uint8  _patch);
```

## Functions

* [deploy\(bytes \_data\)](imodulefactory.md#deploy)
* [version\(\)](imodulefactory.md#version)
* [name\(\)](imodulefactory.md#name)
* [title\(\)](imodulefactory.md#title)
* [description\(\)](imodulefactory.md#description)
* [setupCost\(\)](imodulefactory.md#setupcost)
* [getTypes\(\)](imodulefactory.md#gettypes)
* [getTags\(\)](imodulefactory.md#gettags)
* [changeSetupCost\(uint256 \_newSetupCost\)](imodulefactory.md#changesetupcost)
* [changeCostAndType\(uint256 \_setupCost, bool \_isCostInPoly\)](imodulefactory.md#changecostandtype)
* [changeSTVersionBounds\(string \_boundType, uint8\[\] \_newVersion\)](imodulefactory.md#changestversionbounds)
* [setupCostInPoly\(\)](imodulefactory.md#setupcostinpoly)
* [getLowerSTVersionBounds\(\)](imodulefactory.md#getlowerstversionbounds)
* [getUpperSTVersionBounds\(\)](imodulefactory.md#getupperstversionbounds)
* [changeTags\(bytes32\[\] \_tagsData\)](imodulefactory.md#changetags)
* [changeName\(bytes32 \_name\)](imodulefactory.md#changename)
* [changeDescription\(string \_description\)](imodulefactory.md#changedescription)
* [changeTitle\(string \_title\)](imodulefactory.md#changetitle)

### deploy

⤿ Overridden Implementation\(s\): [BlacklistTransferManagerFactory.deploy](blacklisttransfermanagerfactory.md#deploy),[CappedSTOFactory.deploy](cappedstofactory.md#deploy),[CountTransferManagerFactory.deploy](counttransfermanagerfactory.md#deploy),[DummySTOFactory.deploy](dummystofactory.md#deploy),[ERC20DividendCheckpointFactory.deploy](erc20dividendcheckpointfactory.md#deploy),[EtherDividendCheckpointFactory.deploy](etherdividendcheckpointfactory.md#deploy),[GeneralPermissionManagerFactory.deploy](generalpermissionmanagerfactory.md#deploy),[GeneralTransferManagerFactory.deploy](generaltransfermanagerfactory.md#deploy),[KYCTransferManagerFactory.deploy](kyctransfermanagerfactory.md#deploy),[LockUpTransferManagerFactory.deploy](lockuptransfermanagerfactory.md#deploy),[ManualApprovalTransferManagerFactory.deploy](manualapprovaltransfermanagerfactory.md#deploy),[MockBurnFactory.deploy](mockburnfactory.md#deploy),[PercentageTransferManagerFactory.deploy](percentagetransfermanagerfactory.md#deploy),[PLCRVotingCheckpointFactory.deploy](plcrvotingcheckpointfactory.md#deploy),[PreSaleSTOFactory.deploy](presalestofactory.md#deploy),[ScheduledCheckpointFactory.deploy](scheduledcheckpointfactory.md#deploy),[SignedTransferManagerFactory.deploy](signedtransfermanagerfactory.md#deploy),[TrackedRedemptionFactory.deploy](trackedredemptionfactory.md#deploy),[USDTieredSTOFactory.deploy](usdtieredstofactory.md#deploy),[VestingEscrowWalletFactory.deploy](vestingescrowwalletfactory.md#deploy),[VolumeRestrictionTMFactory.deploy](volumerestrictiontmfactory.md#deploy),[WeightedVoteCheckpointFactory.deploy](weightedvotecheckpointfactory.md#deploy)

```javascript
function deploy(bytes _data) external nonpayable
returns(moduleAddress address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_data | bytes |  |

### version

⤿ Overridden Implementation\(s\): [ModuleFactory.version](modulefactory.md#version),[UpgradableModuleFactory.version](upgradablemodulefactory.md#version)

Get the tags related to the module factory

```javascript
function version() external view
returns(moduleVersion string)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### name

Get the tags related to the module factory

```javascript
function name() external view
returns(moduleName bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### title

Returns the title associated with the module

```javascript
function title() external view
returns(moduleTitle string)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### description

Returns the description associated with the module

```javascript
function description() external view
returns(moduleDescription string)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### setupCost

Get the setup cost of the module in USD

```javascript
function setupCost() external nonpayable
returns(usdSetupCost uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getTypes

⤿ Overridden Implementation\(s\): [MockFactory.getTypes](mockfactory.md#gettypes),[MockWrongTypeFactory.getTypes](mockwrongtypefactory.md#gettypes),[ModuleFactory.getTypes](modulefactory.md#gettypes)

Type of the Module factory

```javascript
function getTypes() external view
returns(moduleTypes uint8[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getTags

⤿ Overridden Implementation\(s\): [ModuleFactory.getTags](modulefactory.md#gettags),[TestSTOFactory.getTags](teststofactory.md#gettags)

Get the tags related to the module factory

```javascript
function getTags() external view
returns(moduleTags bytes32[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### changeSetupCost

⤿ Overridden Implementation\(s\): [ModuleFactory.changeSetupCost](modulefactory.md#changesetupcost)

Used to change the setup fee

```javascript
function changeSetupCost(uint256 _newSetupCost) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_newSetupCost | uint256 | New setup fee |

### changeCostAndType

⤿ Overridden Implementation\(s\): [ModuleFactory.changeCostAndType](modulefactory.md#changecostandtype)

Used to change the currency and amount setup cost

```javascript
function changeCostAndType(uint256 _setupCost, bool _isCostInPoly) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 | new setup cost |
| \_isCostInPoly | bool | new setup cost currency. USD or POLY |

### changeSTVersionBounds

⤿ Overridden Implementation\(s\): [ModuleFactory.changeSTVersionBounds](modulefactory.md#changestversionbounds)

Function use to change the lower and upper bound of the compatible version st

```javascript
function changeSTVersionBounds(string _boundType, uint8[] _newVersion) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_boundType | string | Type of bound |
| \_newVersion | uint8\[\] | New version array |

### setupCostInPoly

⤿ Overridden Implementation\(s\): [ModuleFactory.setupCostInPoly](modulefactory.md#setupcostinpoly)

Get the setup cost of the module

```javascript
function setupCostInPoly() external nonpayable
returns(polySetupCost uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getLowerSTVersionBounds

⤿ Overridden Implementation\(s\): [ModuleFactory.getLowerSTVersionBounds](modulefactory.md#getlowerstversionbounds)

Used to get the lower bound

```javascript
function getLowerSTVersionBounds() external view
returns(lowerBounds uint8[])
```

**Returns**

Lower bound

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getUpperSTVersionBounds

⤿ Overridden Implementation\(s\): [ModuleFactory.getUpperSTVersionBounds](modulefactory.md#getupperstversionbounds)

Used to get the upper bound

```javascript
function getUpperSTVersionBounds() external view
returns(upperBounds uint8[])
```

**Returns**

Upper bound

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### changeTags

⤿ Overridden Implementation\(s\): [ModuleFactory.changeTags](modulefactory.md#changetags)

Updates the tags of the ModuleFactory

```javascript
function changeTags(bytes32[] _tagsData) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_tagsData | bytes32\[\] | New list of tags |

### changeName

⤿ Overridden Implementation\(s\): [ModuleFactory.changeName](modulefactory.md#changename)

Updates the name of the ModuleFactory

```javascript
function changeName(bytes32 _name) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_name | bytes32 | New name that will replace the old one. |

### changeDescription

⤿ Overridden Implementation\(s\): [ModuleFactory.changeDescription](modulefactory.md#changedescription)

Updates the description of the ModuleFactory

```javascript
function changeDescription(string _description) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_description | string | New description that will replace the old one. |

### changeTitle

⤿ Overridden Implementation\(s\): [ModuleFactory.changeTitle](modulefactory.md#changetitle)

Updates the title of the ModuleFactory

```javascript
function changeTitle(string _title) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_title | string | New Title that will replace the old one. |

