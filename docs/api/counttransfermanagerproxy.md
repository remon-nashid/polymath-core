---
id: version-3.0.0-CountTransferManagerProxy
title: CountTransferManagerProxy
original_id: CountTransferManagerProxy
---

# CountTransferManager module Proxy \(CountTransferManagerProxy.sol\)

View Source: [contracts/modules/TransferManager/CTM/CountTransferManagerProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/CTM/CountTransferManagerProxy.sol)

**↗ Extends:** [**CountTransferManagerStorage**](counttransfermanagerstorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**CountTransferManagerProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](counttransfermanagerproxy.md)

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

