---
id: version-3.0.0-Migrations
title: Migrations
original_id: Migrations
---

# Migrations.sol

View Source: [contracts/Migrations.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/Migrations.sol)

**Migrations**

## Contract Members

**Constants & Variables**

```javascript
address public owner;
uint256 public lastCompletedMigration;
```

## Modifiers

* [restricted](migrations.md#restricted)

### restricted

```javascript
modifier restricted() internal
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


## Functions

* [\(\)](migrations.md)
* [setCompleted\(uint256 \_completed\)](migrations.md#setcompleted)
* [upgrade\(address \_newAddress\)](migrations.md#upgrade)

```javascript
function () public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### setCompleted

```javascript
function setCompleted(uint256 _completed) public nonpayable restricted
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_completed | uint256 |  |

### upgrade

```javascript
function upgrade(address _newAddress) public nonpayable restricted
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_newAddress | address |  |

