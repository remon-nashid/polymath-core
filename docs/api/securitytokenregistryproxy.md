---
id: version-3.0.0-SecurityTokenRegistryProxy
title: SecurityTokenRegistryProxy
original_id: SecurityTokenRegistryProxy
---

# SecurityTokenRegistryProxy \(SecurityTokenRegistryProxy.sol\)

View Source: [contracts/proxy/SecurityTokenRegistryProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/proxy/SecurityTokenRegistryProxy.sol)

**↗ Extends:** [**EternalStorage**](eternalstorage.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**SecurityTokenRegistryProxy**

This proxy holds the storage of the SecurityTokenRegistry contract and delegates every call to the current implementation set. Besides, it allows to upgrade the SecurityTokenRegistry's behaviour towards further implementations, and provides basic authorization control functionalities

## Functions

