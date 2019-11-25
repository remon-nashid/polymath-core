---
id: version-3.0.0-ManualApprovalTransferManagerStorage
title: ManualApprovalTransferManagerStorage
original_id: ManualApprovalTransferManagerStorage
---

# Contract used to store layout for the ManualApprovalTransferManager storage \(ManualApprovalTransferM

View Source: [contracts/modules/TransferManager/MATM/ManualApprovalTransferManagerStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/MATM/ManualApprovalTransferManagerStorage.sol)

**↘ Derived Contracts:** [**ManualApprovalTransferManager**](manualapprovaltransfermanager.md)**,** [**ManualApprovalTransferManagerProxy**](manualapprovaltransfermanagerproxy.md)

**ManualApprovalTransferManagerStorage**

## Structs

### ManualApproval

```javascript
struct ManualApproval {
 address from,
 address to,
 uint256 initialAllowance,
 uint256 allowance,
 uint256 expiryTime,
 bytes32 description
}
```

## Contract Members

**Constants & Variables**

```javascript
mapping(address => mapping(address => uint256)) public approvalIndex;
struct ManualApprovalTransferManagerStorage.ManualApproval[] public approvals;
```

## Functions

