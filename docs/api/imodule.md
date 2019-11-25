---
id: version-3.0.0-IModule
title: IModule
original_id: IModule
---

# Interface that every module contract should implement \(IModule.sol\)

View Source: [contracts/interfaces/IModule.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IModule.sol)

**↘ Derived Contracts:** [**Module**](module.md)

**IModule**

## Functions

* [getInitFunction\(\)](imodule.md#getinitfunction)
* [getPermissions\(\)](imodule.md#getpermissions)

### getInitFunction

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.getInitFunction](blacklisttransfermanager.md#getinitfunction),[CappedSTO.getInitFunction](cappedsto.md#getinitfunction),[CountTransferManager.getInitFunction](counttransfermanager.md#getinitfunction),[DividendCheckpoint.getInitFunction](dividendcheckpoint.md#getinitfunction),[DummySTO.getInitFunction](dummysto.md#getinitfunction),[GeneralPermissionManager.getInitFunction](generalpermissionmanager.md#getinitfunction),[GeneralTransferManager.getInitFunction](generaltransfermanager.md#getinitfunction),[KYCTransferManager.getInitFunction](kyctransfermanager.md#getinitfunction),[LockUpTransferManager.getInitFunction](lockuptransfermanager.md#getinitfunction),[ManualApprovalTransferManager.getInitFunction](manualapprovaltransfermanager.md#getinitfunction),[PercentageTransferManager.getInitFunction](percentagetransfermanager.md#getinitfunction),[PLCRVotingCheckpoint.getInitFunction](plcrvotingcheckpoint.md#getinitfunction),[PreSaleSTO.getInitFunction](presalesto.md#getinitfunction),[ScheduledCheckpoint.getInitFunction](scheduledcheckpoint.md#getinitfunction),[SignedTransferManager.getInitFunction](signedtransfermanager.md#getinitfunction),[TrackedRedemption.getInitFunction](trackedredemption.md#getinitfunction),[USDTieredSTO.getInitFunction](usdtieredsto.md#getinitfunction),[VestingEscrowWallet.getInitFunction](vestingescrowwallet.md#getinitfunction),[VolumeRestrictionTM.getInitFunction](volumerestrictiontm.md#getinitfunction),[WeightedVoteCheckpoint.getInitFunction](weightedvotecheckpoint.md#getinitfunction)

This function returns the signature of configure function

```javascript
function getInitFunction() external pure
returns(initFunction bytes4)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getPermissions

⤾ overrides [IPermissionManager.getPermissions](ipermissionmanager.md#getpermissions)

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.getPermissions](blacklisttransfermanager.md#getpermissions),[CappedSTO.getPermissions](cappedsto.md#getpermissions),[CountTransferManager.getPermissions](counttransfermanager.md#getpermissions),[DividendCheckpoint.getPermissions](dividendcheckpoint.md#getpermissions),[DummySTO.getPermissions](dummysto.md#getpermissions),[GeneralPermissionManager.getPermissions](generalpermissionmanager.md#getpermissions),[GeneralTransferManager.getPermissions](generaltransfermanager.md#getpermissions),[KYCTransferManager.getPermissions](kyctransfermanager.md#getpermissions),[LockUpTransferManager.getPermissions](lockuptransfermanager.md#getpermissions),[ManualApprovalTransferManager.getPermissions](manualapprovaltransfermanager.md#getpermissions),[PercentageTransferManager.getPermissions](percentagetransfermanager.md#getpermissions),[PLCRVotingCheckpoint.getPermissions](plcrvotingcheckpoint.md#getpermissions),[PreSaleSTO.getPermissions](presalesto.md#getpermissions),[ScheduledCheckpoint.getPermissions](scheduledcheckpoint.md#getpermissions),[SignedTransferManager.getPermissions](signedtransfermanager.md#getpermissions),[TrackedRedemption.getPermissions](trackedredemption.md#getpermissions),[USDTieredSTO.getPermissions](usdtieredsto.md#getpermissions),[VestingEscrowWallet.getPermissions](vestingescrowwallet.md#getpermissions),[VolumeRestrictionTM.getPermissions](volumerestrictiontm.md#getpermissions),[WeightedVoteCheckpoint.getPermissions](weightedvotecheckpoint.md#getpermissions)

Return the permission flags that are associated with a module

```javascript
function getPermissions() external view
returns(permissions bytes32[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


