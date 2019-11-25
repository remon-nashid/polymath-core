---
id: version-3.0.0-OZStorage
title: OZStorage
original_id: OZStorage
---

# OZStorage.sol

View Source: [contracts/tokens/OZStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/tokens/OZStorage.sol)

**↘ Derived Contracts:** [**SecurityTokenProxy**](securitytokenproxy.md)**,** [**STGetter**](stgetter.md)

**OZStorage**

## Contract Members

**Constants & Variables**

```javascript
mapping(address => uint256) private _balances;
mapping(address => mapping(address => uint256)) private _allowed;
uint256 private _totalSupply;
uint256 private _guardCounter;
```

## Functions

* [totalSupply\(\)](ozstorage.md#totalsupply)
* [balanceOf\(address \_investor\)](ozstorage.md#balanceof)
* [\_allowance\(address owner, address spender\)](ozstorage.md#_allowance)

### totalSupply

```javascript
function totalSupply() internal view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### balanceOf

```javascript
function balanceOf(address _investor) internal view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_investor | address |  |

### \_allowance

```javascript
function _allowance(address owner, address spender) internal view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| owner | address |  |
| spender | address |  |

