---
id: version-3.0.0-VolumeRestrictionTMFactory
title: VolumeRestrictionTMFactory
original_id: VolumeRestrictionTMFactory
---

# Factory for deploying VolumeRestrictionTM module \(VolumeRestrictionTMFactory.sol\)

View Source: [contracts/modules/TransferManager/VRTM/VolumeRestrictionTMFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/VRTM/VolumeRestrictionTMFactory.sol)

**↗ Extends:** [**UpgradableModuleFactory**](upgradablemodulefactory.md)

**VolumeRestrictionTMFactory**

## Functions

* [\(uint256 \_setupCost, address \_logicContract, address \_polymathRegistry, bool \_isCostInPoly\)](volumerestrictiontmfactory.md)
* [deploy\(bytes \_data\)](volumerestrictiontmfactory.md#deploy)

Constructor

```javascript
function (uint256 _setupCost, address _logicContract, address _polymathRegistry, bool _isCostInPoly) public nonpayable UpgradableModuleFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 | Setup cost of the module |
| \_logicContract | address | Contract address that contains the logic related to `description` |
| \_polymathRegistry | address | Address of the Polymath registry |
| \_isCostInPoly | bool | true = cost in Poly, false = USD |

### deploy

⤾ overrides [IModuleFactory.deploy](imodulefactory.md#deploy)

Used to launch the Module with the help of factory

```javascript
function deploy(bytes _data) external nonpayable
returns(address)
```

**Returns**

address Contract address of the Module

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_data | bytes |  |

