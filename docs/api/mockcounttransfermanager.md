---
id: version-3.0.0-MockCountTransferManager
title: MockCountTransferManager
original_id: MockCountTransferManager
---

# Transfer Manager for limiting maximum number of token holders \(MockCountTransferManager.sol\)

View Source: [contracts/mocks/MockCountTransferManager.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/mocks/MockCountTransferManager.sol)

**↗ Extends:** [**CountTransferManager**](counttransfermanager.md)

**MockCountTransferManager**

## Contract Members

**Constants & Variables**

```javascript
uint256 public someValue;
```

**Events**

```javascript
event Upgrader(uint256  _someData);
```

## Functions

* [\(address \_securityToken, address \_polyToken\)](mockcounttransfermanager.md)
* [initialize\(uint256 \_someData\)](mockcounttransfermanager.md#initialize)
* [newFunction\(\)](mockcounttransfermanager.md#newfunction)

Constructor

```javascript
function (address _securityToken, address _polyToken) public nonpayable CountTransferManager
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_securityToken | address | Address of the security token |
| \_polyToken | address |  |

### initialize

```javascript
function initialize(uint256 _someData) public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_someData | uint256 |  |

### newFunction

```javascript
function newFunction() external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


