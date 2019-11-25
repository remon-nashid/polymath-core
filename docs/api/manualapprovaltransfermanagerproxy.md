---
id: version-3.0.0-ManualApprovalTransferManagerProxy
title: ManualApprovalTransferManagerProxy
original_id: ManualApprovalTransferManagerProxy
---

# ManualApprovalTransferManager module Proxy \(ManualApprovalTransferManagerProxy.sol\)

View Source: [contracts/modules/TransferManager/MATM/ManualApprovalTransferManagerProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/MATM/ManualApprovalTransferManagerProxy.sol)

**↗ Extends:** [**ManualApprovalTransferManagerStorage**](manualapprovaltransfermanagerstorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**ManualApprovalTransferManagerProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](manualapprovaltransfermanagerproxy.md)

Constructor

```javascript
function (string _version, address _securityToken, address _polyAddress, address _implementation) public nonpayable ModuleStorage
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_version | string |  |
| \_securityToken | address | Address of the security token |
| \_polyAddress | address | Address of the polytoken |
| \_implementation | address | representing the address of the new implementation to be set |

