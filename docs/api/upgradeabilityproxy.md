---
id: version-3.0.0-UpgradeabilityProxy
title: UpgradeabilityProxy
original_id: UpgradeabilityProxy
---

# UpgradeabilityProxy \(UpgradeabilityProxy.sol\)

View Source: [contracts/proxy/UpgradeabilityProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/proxy/UpgradeabilityProxy.sol)

**↗ Extends:** [**Proxy**](proxy.md) **↘ Derived Contracts:** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**UpgradeabilityProxy**

This contract represents a proxy where the implementation address to which it will delegate can be upgraded

## Contract Members

**Constants & Variables**

```javascript
string internal __version;
address internal __implementation;
```

**Events**

```javascript
event Upgraded(string  _newVersion, address indexed _newImplementation);
```

## Functions

* [\_upgradeTo\(string \_newVersion, address \_newImplementation\)](upgradeabilityproxy.md#_upgradeto)

### \_upgradeTo

Upgrades the implementation address

```javascript
function _upgradeTo(string _newVersion, address _newImplementation) internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_newVersion | string | representing the version name of the new implementation to be set |
| \_newImplementation | address | representing the address of the new implementation to be set |

