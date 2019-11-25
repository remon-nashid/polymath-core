---
id: version-3.0.0-PreSaleSTOProxy
title: PreSaleSTOProxy
original_id: PreSaleSTOProxy
---

# PreSaleSTO module Proxy \(PreSaleSTOProxy.sol\)

View Source: [contracts/modules/STO/PreSale/PreSaleSTOProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/STO/PreSale/PreSaleSTOProxy.sol)

**↗ Extends:** [**PreSaleSTOStorage**](presalestostorage.md)**,** [**STOStorage**](stostorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**ReentrancyGuard**](reentrancyguard.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**PreSaleSTOProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](presalestoproxy.md)

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

