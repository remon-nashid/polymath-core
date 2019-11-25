---
id: version-3.0.0-TrackedRedemptionFactory
title: TrackedRedemptionFactory
original_id: TrackedRedemptionFactory
---

# Factory for deploying GeneralTransferManager module \(TrackedRedemptionFactory.sol\)

View Source: [contracts/modules/Experimental/Burn/TrackedRedemptionFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Experimental/Burn/TrackedRedemptionFactory.sol)

**↗ Extends:** [**ModuleFactory**](modulefactory.md) **↘ Derived Contracts:** [**MockBurnFactory**](mockburnfactory.md)

**TrackedRedemptionFactory**

## Functions

* [\(uint256 \_setupCost, address \_polymathRegistry, bool \_isCostInPoly\)](trackedredemptionfactory.md)
* [deploy\(bytes \_data\)](trackedredemptionfactory.md#deploy)

Constructor

```javascript
function (uint256 _setupCost, address _polymathRegistry, bool _isCostInPoly) public nonpayable ModuleFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 | Setup cost of module |
| \_polymathRegistry | address | Address of the Polymath registry |
| \_isCostInPoly | bool | true = cost in Poly, false = USD |

### deploy

⤾ overrides [IModuleFactory.deploy](imodulefactory.md#deploy)

⤿ Overridden Implementation\(s\): [MockBurnFactory.deploy](mockburnfactory.md#deploy)

Used to launch the Module with the help of factory

```javascript
function deploy(bytes _data) external nonpayable
returns(address)
```

**Returns**

Address Contract address of the Module

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_data | bytes |  |

