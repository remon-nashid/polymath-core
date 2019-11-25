---
id: version-3.0.0-VolumeRestrictionTMProxy
title: VolumeRestrictionTMProxy
original_id: VolumeRestrictionTMProxy
---

# Transfer Manager module for core transfer validation functionality \(VolumeRestrictionTMProxy.sol\)

View Source: [contracts/modules/TransferManager/VRTM/VolumeRestrictionTMProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/VRTM/VolumeRestrictionTMProxy.sol)

**↗ Extends:** [**VolumeRestrictionTMStorage**](volumerestrictiontmstorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**VolumeRestrictionTMProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](volumerestrictiontmproxy.md)

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

