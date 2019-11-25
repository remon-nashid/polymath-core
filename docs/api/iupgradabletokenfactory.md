---
id: version-3.0.0-IUpgradableTokenFactory
title: IUpgradableTokenFactory
original_id: IUpgradableTokenFactory
---

# Interface to be implemented by upgradable token factories \(IUpgradableTokenFactory.sol\)

View Source: [contracts/interfaces/IUpgradableTokenFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IUpgradableTokenFactory.sol)

**IUpgradableTokenFactory**

## Functions

* [upgradeToken\(uint8 \_maxModuleType\)](iupgradabletokenfactory.md#upgradetoken)

### upgradeToken

Used to upgrade a token

```javascript
function upgradeToken(uint8 _maxModuleType) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_maxModuleType | uint8 | maximum module type enumeration |

