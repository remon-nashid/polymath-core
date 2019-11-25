---
id: version-3.0.0-ITransferManager
title: ITransferManager
original_id: ITransferManager
---

# Interface to be implemented by all Transfer Manager modules \(ITransferManager.sol\)

View Source: [contracts/interfaces/ITransferManager.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/ITransferManager.sol)

**↘ Derived Contracts:** [**TransferManager**](transfermanager.md)

**ITransferManager**

**Enums**

### Result

```javascript
enum Result {
 INVALID,
 NA,
 VALID,
 FORCE_VALID
}
```

## Functions

* [executeTransfer\(address \_from, address \_to, uint256 \_amount, bytes \_data\)](itransfermanager.md#executetransfer)
* [verifyTransfer\(address \_from, address \_to, uint256 \_amount, bytes \_data\)](itransfermanager.md#verifytransfer)
* [getTokensByPartition\(bytes32 \_partition, address \_tokenHolder, uint256 \_additionalBalance\)](itransfermanager.md#gettokensbypartition)

### executeTransfer

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.executeTransfer](blacklisttransfermanager.md#executetransfer),[CountTransferManager.executeTransfer](counttransfermanager.md#executetransfer),[GeneralTransferManager.executeTransfer](generaltransfermanager.md#executetransfer),[KYCTransferManager.executeTransfer](kyctransfermanager.md#executetransfer),[LockUpTransferManager.executeTransfer](lockuptransfermanager.md#executetransfer),[ManualApprovalTransferManager.executeTransfer](manualapprovaltransfermanager.md#executetransfer),[PercentageTransferManager.executeTransfer](percentagetransfermanager.md#executetransfer),[ScheduledCheckpoint.executeTransfer](scheduledcheckpoint.md#executetransfer),[SignedTransferManager.executeTransfer](signedtransfermanager.md#executetransfer),[VolumeRestrictionTM.executeTransfer](volumerestrictiontm.md#executetransfer)

Determines if the transfer between these two accounts can happen

```javascript
function executeTransfer(address _from, address _to, uint256 _amount, bytes _data) external nonpayable
returns(result enum ITransferManager.Result)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_from | address |  |
| \_to | address |  |
| \_amount | uint256 |  |
| \_data | bytes |  |

### verifyTransfer

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.verifyTransfer](blacklisttransfermanager.md#verifytransfer),[CountTransferManager.verifyTransfer](counttransfermanager.md#verifytransfer),[GeneralTransferManager.verifyTransfer](generaltransfermanager.md#verifytransfer),[KYCTransferManager.verifyTransfer](kyctransfermanager.md#verifytransfer),[LockUpTransferManager.verifyTransfer](lockuptransfermanager.md#verifytransfer),[ManualApprovalTransferManager.verifyTransfer](manualapprovaltransfermanager.md#verifytransfer),[PercentageTransferManager.verifyTransfer](percentagetransfermanager.md#verifytransfer),[ScheduledCheckpoint.verifyTransfer](scheduledcheckpoint.md#verifytransfer),[SignedTransferManager.verifyTransfer](signedtransfermanager.md#verifytransfer),[VolumeRestrictionTM.verifyTransfer](volumerestrictiontm.md#verifytransfer)

```javascript
function verifyTransfer(address _from, address _to, uint256 _amount, bytes _data) external view
returns(result enum ITransferManager.Result, partition bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_from | address |  |
| \_to | address |  |
| \_amount | uint256 |  |
| \_data | bytes |  |

### getTokensByPartition

⤿ Overridden Implementation\(s\): [BlacklistTransferManager.getTokensByPartition](blacklisttransfermanager.md#gettokensbypartition),[GeneralTransferManager.getTokensByPartition](generaltransfermanager.md#gettokensbypartition),[LockUpTransferManager.getTokensByPartition](lockuptransfermanager.md#gettokensbypartition),[TransferManager.getTokensByPartition](transfermanager.md#gettokensbypartition),[VolumeRestrictionTM.getTokensByPartition](volumerestrictiontm.md#gettokensbypartition)

return the amount of tokens for a given user as per the partition

```javascript
function getTokensByPartition(bytes32 _partition, address _tokenHolder, uint256 _additionalBalance) external view
returns(amount uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_partition | bytes32 | Identifier |
| \_tokenHolder | address | Whom token amount need to query |
| \_additionalBalance | uint256 | It is the `_value` that transfer during transfer/transferFrom function call |

