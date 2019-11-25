---
id: version-3.0.0-ModuleRegistryProxy
title: ModuleRegistryProxy
original_id: ModuleRegistryProxy
---

# ModuleRegistryProxy \(ModuleRegistryProxy.sol\)

View Source: [contracts/proxy/ModuleRegistryProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/proxy/ModuleRegistryProxy.sol)

**↗ Extends:** [**EternalStorage**](eternalstorage.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**ModuleRegistryProxy**

This proxy holds the storage of the ModuleRegistry contract and delegates every call to the current implementation set. Besides, it allows upgrading the contract's behaviour towards further implementations, and provides basic authorization control functionalities

## Functions

