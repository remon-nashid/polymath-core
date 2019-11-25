---
id: version-3.0.0-UpgradableModuleFactory
title: UpgradableModuleFactory
original_id: UpgradableModuleFactory
---

# Factory for deploying upgradable modules \(UpgradableModuleFactory.sol\)

View Source: [contracts/modules/UpgradableModuleFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/UpgradableModuleFactory.sol)

**↗ Extends:** [**ModuleFactory**](modulefactory.md) **↘ Derived Contracts:** [**BlacklistTransferManagerFactory**](blacklisttransfermanagerfactory.md)**,** [**CappedSTOFactory**](cappedstofactory.md)**,** [**CountTransferManagerFactory**](counttransfermanagerfactory.md)**,** [**DummySTOFactory**](dummystofactory.md)**,** [**ERC20DividendCheckpointFactory**](erc20dividendcheckpointfactory.md)**,** [**EtherDividendCheckpointFactory**](etherdividendcheckpointfactory.md)**,** [**GeneralPermissionManagerFactory**](generalpermissionmanagerfactory.md)**,** [**GeneralTransferManagerFactory**](generaltransfermanagerfactory.md)**,** [**LockUpTransferManagerFactory**](lockuptransfermanagerfactory.md)**,** [**ManualApprovalTransferManagerFactory**](manualapprovaltransfermanagerfactory.md)**,** [**PercentageTransferManagerFactory**](percentagetransfermanagerfactory.md)**,** [**PLCRVotingCheckpointFactory**](plcrvotingcheckpointfactory.md)**,** [**PreSaleSTOFactory**](presalestofactory.md)**,** [**USDTieredSTOFactory**](usdtieredstofactory.md)**,** [**VestingEscrowWalletFactory**](vestingescrowwalletfactory.md)**,** [**VolumeRestrictionTMFactory**](volumerestrictiontmfactory.md)**,** [**WeightedVoteCheckpointFactory**](weightedvotecheckpointfactory.md)

**UpgradableModuleFactory**

## Structs

### LogicContract

```javascript
struct LogicContract {
 string version,
 address logicContract,
 bytes upgradeData
}
```

## Contract Members

**Constants & Variables**

```javascript
mapping(uint256 => struct UpgradableModuleFactory.LogicContract) public logicContracts;
mapping(address => mapping(address => uint256)) public modules;
mapping(address => address) public moduleToSecurityToken;
uint256 public latestUpgrade;
```

**Events**

```javascript
event LogicContractSet(string  _version, uint256  _upgrade, address  _logicContract, bytes  _upgradeData);
event ModuleUpgraded(address indexed _module, address indexed _securityToken, uint256 indexed _version);
```

## Functions

* [\(string \_version, uint256 \_setupCost, address \_logicContract, address \_polymathRegistry, bool \_isCostInPoly\)](upgradablemodulefactory.md)
* [setLogicContract\(string \_version, address \_logicContract, bytes \_upgradeData\)](upgradablemodulefactory.md#setlogiccontract)
* [updateLogicContract\(uint256 \_upgrade, string \_version, address \_logicContract, bytes \_upgradeData\)](upgradablemodulefactory.md#updatelogiccontract)
* [\_modifyLogicContract\(uint256 \_upgrade, string \_version, address \_logicContract, bytes \_upgradeData\)](upgradablemodulefactory.md#_modifylogiccontract)
* [upgrade\(address \_module\)](upgradablemodulefactory.md#upgrade)
* [\_initializeModule\(address \_module, bytes \_data\)](upgradablemodulefactory.md#_initializemodule)
* [version\(\)](upgradablemodulefactory.md#version)

Constructor

```javascript
function (string _version, uint256 _setupCost, address _logicContract, address _polymathRegistry, bool _isCostInPoly) public nonpayable ModuleFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_version | string |  |
| \_setupCost | uint256 | Setup cost of the module |
| \_logicContract | address | Contract address that contains the logic related to `description` |
| \_polymathRegistry | address | Address of the Polymath registry |
| \_isCostInPoly | bool | true = cost in Poly, false = USD |

### setLogicContract

Used to upgrade the module factory

```javascript
function setLogicContract(string _version, address _logicContract, bytes _upgradeData) external nonpayable onlyOwner
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_version | string | Version of upgraded module |
| \_logicContract | address | Address of deployed module logic contract referenced from proxy |
| \_upgradeData | bytes | Data to be passed in call to upgradeToAndCall when a token upgrades its module |

### updateLogicContract

Used to update an existing token logic contract

```javascript
function updateLogicContract(uint256 _upgrade, string _version, address _logicContract, bytes _upgradeData) external nonpayable onlyOwner
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_upgrade | uint256 | logic contract to upgrade |
| \_version | string | Version of upgraded module |
| \_logicContract | address | Address of deployed module logic contract referenced from proxy |
| \_upgradeData | bytes | Data to be passed in call to upgradeToAndCall when a token upgrades its module |

### \_modifyLogicContract

```javascript
function _modifyLogicContract(uint256 _upgrade, string _version, address _logicContract, bytes _upgradeData) internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_upgrade | uint256 |  |
| \_version | string |  |
| \_logicContract | address |  |
| \_upgradeData | bytes |  |

### upgrade

Used by a security token to upgrade a given module

```javascript
function upgrade(address _module) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_module | address | Address of \(proxy\) module to be upgraded |

### \_initializeModule

⤾ overrides [ModuleFactory.\_initializeModule](modulefactory.md#_initializemodule)

Used to initialize the module

```javascript
function _initializeModule(address _module, bytes _data) internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_module | address | Address of module |
| \_data | bytes | Data used for the intialization of the module factory variables |

### version

⤾ overrides [ModuleFactory.version](modulefactory.md#version)

Get the version related to the module factory

```javascript
function version() external view
returns(string)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


