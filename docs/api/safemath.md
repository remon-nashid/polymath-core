---
id: version-3.0.0-SafeMath
title: SafeMath
original_id: SafeMath
---

# SafeMath \(SafeMath.sol\)

View Source: [openzeppelin-solidity/contracts/math/SafeMath.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/openzeppelin-solidity/contracts/math/SafeMath.sol)

**SafeMath**

Unsigned math operations with safety checks that revert on error

## Functions

* [mul\(uint256 a, uint256 b\)](safemath.md#mul)
* [div\(uint256 a, uint256 b\)](safemath.md#div)
* [sub\(uint256 a, uint256 b\)](safemath.md#sub)
* [add\(uint256 a, uint256 b\)](safemath.md#add)
* [mod\(uint256 a, uint256 b\)](safemath.md#mod)

### mul

Multiplies two unsigned integers, reverts on overflow.

```javascript
function mul(uint256 a, uint256 b) internal pure
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| a | uint256 |  |
| b | uint256 |  |

### div

Integer division of two unsigned integers truncating the quotient, reverts on division by zero.

```javascript
function div(uint256 a, uint256 b) internal pure
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| a | uint256 |  |
| b | uint256 |  |

### sub

Subtracts two unsigned integers, reverts on overflow \(i.e. if subtrahend is greater than minuend\).

```javascript
function sub(uint256 a, uint256 b) internal pure
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| a | uint256 |  |
| b | uint256 |  |

### add

Adds two unsigned integers, reverts on overflow.

```javascript
function add(uint256 a, uint256 b) internal pure
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| a | uint256 |  |
| b | uint256 |  |

### mod

Divides two unsigned integers and returns the remainder \(unsigned integer modulo\), reverts when dividing by zero.

```javascript
function mod(uint256 a, uint256 b) internal pure
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| a | uint256 |  |
| b | uint256 |  |

