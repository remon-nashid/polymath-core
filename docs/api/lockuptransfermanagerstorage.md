---
id: version-3.0.0-LockUpTransferManagerStorage
title: LockUpTransferManagerStorage
original_id: LockUpTransferManagerStorage
---

# Wallet for core vesting escrow functionality \(LockUpTransferManagerStorage.sol\)

View Source: [contracts/modules/TransferManager/LTM/LockUpTransferManagerStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/LTM/LockUpTransferManagerStorage.sol)

**↘ Derived Contracts:** [**LockUpTransferManager**](lockuptransfermanager.md)**,** [**LockUpTransferManagerProxy**](lockuptransfermanagerproxy.md)

**LockUpTransferManagerStorage**

## Structs

### LockUp

```javascript
struct LockUp {
 uint256 lockupAmount,
 uint256 startTime,
 uint256 lockUpPeriodSeconds,
 uint256 releaseFrequencySeconds
}
```

## Contract Members

**Constants & Variables**

```javascript
//public members
mapping(bytes32 => struct LockUpTransferManagerStorage.LockUp) public lockups;

//internal members
mapping(address => bytes32[]) internal userToLockups;
mapping(bytes32 => address[]) internal lockupToUsers;
mapping(address => mapping(bytes32 => uint256)) internal userToLockupIndex;
mapping(bytes32 => mapping(address => uint256)) internal lockupToUserIndex;
bytes32[] internal lockupArray;
```

## Functions

