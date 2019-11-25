---
id: version-3.0.0-IPermissionManager
title: IPermissionManager
original_id: IPermissionManager
---

# Interface to be implemented by all permission manager modules \(IPermissionManager.sol\)

View Source: [contracts/modules/PermissionManager/IPermissionManager.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/PermissionManager/IPermissionManager.sol)

**↘ Derived Contracts:** [**GeneralPermissionManager**](generalpermissionmanager.md)

**IPermissionManager**

## Functions

* [checkPermission\(address \_delegate, address \_module, bytes32 \_perm\)](ipermissionmanager.md#checkpermission)
* [addDelegate\(address \_delegate, bytes32 \_details\)](ipermissionmanager.md#adddelegate)
* [deleteDelegate\(address \_delegate\)](ipermissionmanager.md#deletedelegate)
* [checkDelegate\(address \_potentialDelegate\)](ipermissionmanager.md#checkdelegate)
* [changePermission\(address \_delegate, address \_module, bytes32 \_perm, bool \_valid\)](ipermissionmanager.md#changepermission)
* [changePermissionMulti\(address \_delegate, address\[\] \_modules, bytes32\[\] \_perms, bool\[\] \_valids\)](ipermissionmanager.md#changepermissionmulti)
* [getAllDelegatesWithPerm\(address \_module, bytes32 \_perm\)](ipermissionmanager.md#getalldelegateswithperm)
* [getAllModulesAndPermsFromTypes\(address \_delegate, uint8\[\] \_types\)](ipermissionmanager.md#getallmodulesandpermsfromtypes)
* [getPermissions\(\)](ipermissionmanager.md#getpermissions)
* [getAllDelegates\(\)](ipermissionmanager.md#getalldelegates)

### checkPermission

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.checkPermission](generalpermissionmanager.md#checkpermission)

Used to check the permission on delegate corresponds to module contract address

```javascript
function checkPermission(address _delegate, address _module, bytes32 _perm) external view
returns(bool)
```

**Returns**

bool

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | Ethereum address of the delegate |
| \_module | address | Ethereum contract address of the module |
| \_perm | bytes32 | Permission flag |

### addDelegate

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.addDelegate](generalpermissionmanager.md#adddelegate)

Used to add a delegate

```javascript
function addDelegate(address _delegate, bytes32 _details) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | Ethereum address of the delegate |
| \_details | bytes32 | Details about the delegate i.e `Belongs to financial firm` |

### deleteDelegate

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.deleteDelegate](generalpermissionmanager.md#deletedelegate)

Used to delete a delegate

```javascript
function deleteDelegate(address _delegate) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | Ethereum address of the delegate |

### checkDelegate

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.checkDelegate](generalpermissionmanager.md#checkdelegate)

Used to check if an address is a delegate or not

```javascript
function checkDelegate(address _potentialDelegate) external view
returns(bool)
```

**Returns**

bool

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_potentialDelegate | address | the address of potential delegate |

### changePermission

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.changePermission](generalpermissionmanager.md#changepermission)

Used to provide/change the permission to the delegate corresponds to the module contract

```javascript
function changePermission(address _delegate, address _module, bytes32 _perm, bool _valid) external nonpayable
```

**Returns**

bool

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | Ethereum address of the delegate |
| \_module | address | Ethereum contract address of the module |
| \_perm | bytes32 | Permission flag |
| \_valid | bool | Bool flag use to switch on/off the permission |

### changePermissionMulti

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.changePermissionMulti](generalpermissionmanager.md#changepermissionmulti)

Used to change one or more permissions for a single delegate at once

```javascript
function changePermissionMulti(address _delegate, address[] _modules, bytes32[] _perms, bool[] _valids) external nonpayable
```

**Returns**

nothing

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | Ethereum address of the delegate |
| \_modules | address\[\] | Multiple module matching the multiperms, needs to be same length |
| \_perms | bytes32\[\] | Multiple permission flag needs to be changed |
| \_valids | bool\[\] | Bool array consist the flag to switch on/off the permission |

### getAllDelegatesWithPerm

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.getAllDelegatesWithPerm](generalpermissionmanager.md#getalldelegateswithperm)

Used to return all delegates with a given permission and module

```javascript
function getAllDelegatesWithPerm(address _module, bytes32 _perm) external view
returns(address[])
```

**Returns**

address\[\]

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_module | address | Ethereum contract address of the module |
| \_perm | bytes32 | Permission flag |

### getAllModulesAndPermsFromTypes

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.getAllModulesAndPermsFromTypes](generalpermissionmanager.md#getallmodulesandpermsfromtypes)

Used to return all permission of a single or multiple module

```javascript
function getAllModulesAndPermsFromTypes(address _delegate, uint8[] _types) external view
returns(address[], bytes32[])
```

**Returns**

address\[\] the address array of Modules this delegate has permission

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | Ethereum address of the delegate |
| \_types | uint8\[\] | uint8\[\] of types |

### getPermissions

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.getPermissions](blacklisttransfermanager.md#getpermissions),[CappedSTO.getPermissions](cappedsto.md#getpermissions),[CountTransferManager.getPermissions](counttransfermanager.md#getpermissions),[DividendCheckpoint.getPermissions](dividendcheckpoint.md#getpermissions),[DummySTO.getPermissions](dummysto.md#getpermissions),[GeneralPermissionManager.getPermissions](generalpermissionmanager.md#getpermissions),[GeneralTransferManager.getPermissions](generaltransfermanager.md#getpermissions),[IModule.getPermissions](imodule.md#getpermissions),[KYCTransferManager.getPermissions](kyctransfermanager.md#getpermissions),[LockUpTransferManager.getPermissions](lockuptransfermanager.md#getpermissions),[ManualApprovalTransferManager.getPermissions](manualapprovaltransfermanager.md#getpermissions),[PercentageTransferManager.getPermissions](percentagetransfermanager.md#getpermissions),[PLCRVotingCheckpoint.getPermissions](plcrvotingcheckpoint.md#getpermissions),[PreSaleSTO.getPermissions](presalesto.md#getpermissions),[ScheduledCheckpoint.getPermissions](scheduledcheckpoint.md#getpermissions),[SignedTransferManager.getPermissions](signedtransfermanager.md#getpermissions),[TrackedRedemption.getPermissions](trackedredemption.md#getpermissions),[USDTieredSTO.getPermissions](usdtieredsto.md#getpermissions),[VestingEscrowWallet.getPermissions](vestingescrowwallet.md#getpermissions),[VolumeRestrictionTM.getPermissions](volumerestrictiontm.md#getpermissions),[WeightedVoteCheckpoint.getPermissions](weightedvotecheckpoint.md#getpermissions)

Used to get the Permission flag related the `this` contract

```javascript
function getPermissions() external view
returns(bytes32[])
```

**Returns**

Array of permission flags

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getAllDelegates

⤿ Overridden Implementation\(s\): [GeneralPermissionManager.getAllDelegates](generalpermissionmanager.md#getalldelegates)

Used to get all delegates

```javascript
function getAllDelegates() external view
returns(address[])
```

**Returns**

address\[\]

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


