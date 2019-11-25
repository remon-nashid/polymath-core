---
id: version-3.0.0-USDTieredSTOProxy
title: USDTieredSTOProxy
original_id: USDTieredSTOProxy
---

# USDTiered STO module Proxy \(USDTieredSTOProxy.sol\)

View Source: [contracts/modules/STO/USDTiered/USDTieredSTOProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/STO/USDTiered/USDTieredSTOProxy.sol)

**↗ Extends:** [**USDTieredSTOStorage**](usdtieredstostorage.md)**,** [**STOStorage**](stostorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**ReentrancyGuard**](reentrancyguard.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**USDTieredSTOProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](usdtieredstoproxy.md)

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

