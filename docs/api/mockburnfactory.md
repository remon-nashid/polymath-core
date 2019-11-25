---
id: version-3.0.0-MockBurnFactory
title: MockBurnFactory
original_id: MockBurnFactory
---

# Mock Contract Not fit for production environment \(MockBurnFactory.sol\)

View Source: [contracts/mocks/MockBurnFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/mocks/MockBurnFactory.sol)

**↗ Extends:** [**TrackedRedemptionFactory**](trackedredemptionfactory.md) **↘ Derived Contracts:** [**MockWrongTypeFactory**](mockwrongtypefactory.md)

**MockBurnFactory**

## Functions

* [\(uint256 \_setupCost, address \_polymathRegistry, bool \_isFeeInPoly\)](mockburnfactory.md)
* [deploy\(bytes \_data\)](mockburnfactory.md#deploy)

Constructor

```javascript
function (uint256 _setupCost, address _polymathRegistry, bool _isFeeInPoly) public nonpayable TrackedRedemptionFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 | Setup cost of the module |
| \_polymathRegistry | address | Address of the Polymath Registry |
| \_isFeeInPoly | bool |  |

### deploy

⤾ overrides [TrackedRedemptionFactory.deploy](trackedredemptionfactory.md#deploy)

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

