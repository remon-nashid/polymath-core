---
id: version-3.0.0-ERC20DividendCheckpointProxy
title: ERC20DividendCheckpointProxy
original_id: ERC20DividendCheckpointProxy
---

# Transfer Manager module for core transfer validation functionality \(ERC20DividendCheckpointProxy.sol

View Source: [contracts/modules/Checkpoint/Dividend/ERC20/ERC20DividendCheckpointProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Checkpoint/Dividend/ERC20/ERC20DividendCheckpointProxy.sol)

**↗ Extends:** [**ERC20DividendCheckpointStorage**](erc20dividendcheckpointstorage.md)**,** [**DividendCheckpointStorage**](dividendcheckpointstorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**ERC20DividendCheckpointProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](erc20dividendcheckpointproxy.md)

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

