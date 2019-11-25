---
id: version-3.0.0-EtherDividendCheckpointProxy
title: EtherDividendCheckpointProxy
original_id: EtherDividendCheckpointProxy
---

# Transfer Manager module for core transfer validation functionality \(EtherDividendCheckpointProxy.sol

View Source: [contracts/modules/Checkpoint/Dividend/Ether/EtherDividendCheckpointProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Checkpoint/Dividend/Ether/EtherDividendCheckpointProxy.sol)

**↗ Extends:** [**DividendCheckpointStorage**](dividendcheckpointstorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**EtherDividendCheckpointProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](etherdividendcheckpointproxy.md)

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

