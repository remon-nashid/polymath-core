---
id: version-3.0.0-BlacklistTransferManagerStorage
title: BlacklistTransferManagerStorage
original_id: BlacklistTransferManagerStorage
---

# Contract used to store layout for the CountTransferManager storage \(BlacklistTransferManagerStorage.

View Source: [contracts/modules/TransferManager/BTM/BlacklistTransferManagerStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/BTM/BlacklistTransferManagerStorage.sol)

**↘ Derived Contracts:** [**BlacklistTransferManager**](blacklisttransfermanager.md)**,** [**BlacklistTransferManagerProxy**](blacklisttransfermanagerproxy.md)

**BlacklistTransferManagerStorage**

## Structs

### BlacklistsDetails

```javascript
struct BlacklistsDetails {
 uint256 startTime,
 uint256 endTime,
 uint256 repeatPeriodTime
}
```

## Contract Members

**Constants & Variables**

```javascript
//public members
mapping(bytes32 => struct BlacklistTransferManagerStorage.BlacklistsDetails) public blacklists;

//internal members
mapping(address => bytes32[]) internal investorToBlacklist;
mapping(bytes32 => address[]) internal blacklistToInvestor;
mapping(address => mapping(bytes32 => uint256)) internal investorToIndex;
mapping(bytes32 => mapping(address => uint256)) internal blacklistToIndex;
bytes32[] internal allBlacklists;
```

## Functions

