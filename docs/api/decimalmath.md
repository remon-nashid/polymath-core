---
id: version-3.0.0-DecimalMath
title: DecimalMath
original_id: DecimalMath
---

# DecimalMath.sol

View Source: [contracts/libraries/DecimalMath.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/libraries/DecimalMath.sol)

**DecimalMath**

## Contract Members

**Constants & Variables**

```javascript
uint256 internal constant e18;
```

## Functions

* [mul\(uint256 x, uint256 y\)](decimalmath.md#mul)
* [div\(uint256 x, uint256 y\)](decimalmath.md#div)

### mul

This function multiplies two decimals represented as \(decimal  _10\*_DECIMALS\)

```javascript
function mul(uint256 x, uint256 y) internal pure
returns(z uint256)
```

**Returns**

uint256 Result of multiplication represented as \(decimal  _10\*_DECIMALS\)

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| x | uint256 |  |
| y | uint256 |  |

### div

This function divides two decimals represented as \(decimal  _10\*_DECIMALS\)

```javascript
function div(uint256 x, uint256 y) internal pure
returns(z uint256)
```

**Returns**

uint256 Result of division represented as \(decimal  _10\*_DECIMALS\)

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| x | uint256 |  |
| y | uint256 |  |

