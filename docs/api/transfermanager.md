---
id: version-3.0.0-TransferManager
title: TransferManager
original_id: TransferManager
---

# Base abstract contract to be implemented by all Transfer Manager modules \(TransferManager.sol\)

View Source: [contracts/modules/TransferManager/TransferManager.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/TransferManager.sol)

**↗ Extends:** [**ITransferManager**](itransfermanager.md)**,** [**Module**](module.md) **↘ Derived Contracts:** [**BlacklistTransferManager**](blacklisttransfermanager.md)**,** [**CountTransferManager**](counttransfermanager.md)**,** [**GeneralTransferManager**](generaltransfermanager.md)**,** [**KYCTransferManager**](kyctransfermanager.md)**,** [**LockUpTransferManager**](lockuptransfermanager.md)**,** [**ManualApprovalTransferManager**](manualapprovaltransfermanager.md)**,** [**PercentageTransferManager**](percentagetransfermanager.md)**,** [**ScheduledCheckpoint**](scheduledcheckpoint.md)**,** [**SignedTransferManager**](signedtransfermanager.md)**,** [**VolumeRestrictionTM**](volumerestrictiontm.md)

**TransferManager**

## Contract Members

**Constants & Variables**

```javascript
bytes32 public constant LOCKED;
bytes32 public constant UNLOCKED;
```

## Modifiers

* [onlySecurityToken](transfermanager.md#onlysecuritytoken)

### onlySecurityToken

```javascript
modifier onlySecurityToken() internal
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


## Functions

* [getTokensByPartition\(bytes32 \_partition, address \_tokenHolder, uint256 \)](transfermanager.md#gettokensbypartition)

### getTokensByPartition

⤾ overrides [ITransferManager.getTokensByPartition](itransfermanager.md#gettokensbypartition)

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.getTokensByPartition](blacklisttransfermanager.md#gettokensbypartition),[GeneralTransferManager.getTokensByPartition](generaltransfermanager.md#gettokensbypartition),[LockUpTransferManager.getTokensByPartition](lockuptransfermanager.md#gettokensbypartition),[VolumeRestrictionTM.getTokensByPartition](volumerestrictiontm.md#gettokensbypartition)

return the amount of tokens for a given user as per the partition

```javascript
function getTokensByPartition(bytes32 _partition, address _tokenHolder, uint256 ) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_partition | bytes32 |  |
| \_tokenHolder | address |  |
|  | uint256 |  |

