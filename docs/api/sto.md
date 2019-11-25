---
id: version-3.0.0-STO
title: STO
original_id: STO
---

# Base abstract contract to be extended by all STO modules \(STO.sol\)

View Source: [contracts/modules/STO/STO.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/STO/STO.sol)

**↗ Extends:** [**ISTO**](isto.md)**,** [**STOStorage**](stostorage.md)**,** [**Module**](module.md) **↘ Derived Contracts:** [**CappedSTO**](cappedsto.md)**,** [**DummySTO**](dummysto.md)**,** [**PreSaleSTO**](presalesto.md)**,** [**USDTieredSTO**](usdtieredsto.md)

**STO**

## Functions

* [getRaised\(enum ISTO.FundRaiseType \_fundRaiseType\)](sto.md#getraised)
* [getTokensSold\(\)](sto.md#gettokenssold)
* [pause\(\)](sto.md#pause)
* [\_setFundRaiseType\(enum ISTO.FundRaiseType\[\] \_fundRaiseTypes\)](sto.md#_setfundraisetype)
* [\_canBuy\(address \_investor\)](sto.md#_canbuy)
* [\_getKey\(bytes32 \_key1, address \_key2\)](sto.md#_getkey)

### getRaised

⤾ overrides [ISTO.getRaised](isto.md#getraised)

Returns funds raised by the STO

```javascript
function getRaised(enum ISTO.FundRaiseType _fundRaiseType) public view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_fundRaiseType | enum ISTO.FundRaiseType |  |

### getTokensSold

⤾ overrides [ISTO.getTokensSold](isto.md#gettokenssold)

⤿ Overridden Implementation\(s\): [CappedSTO.getTokensSold](cappedsto.md#gettokenssold),[DummySTO.getTokensSold](dummysto.md#gettokenssold),[PreSaleSTO.getTokensSold](presalesto.md#gettokenssold),[USDTieredSTO.getTokensSold](usdtieredsto.md#gettokenssold)

Returns the total no. of tokens sold

```javascript
function getTokensSold() external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### pause

⤾ overrides [Module.pause](module.md#pause)

Pause \(overridden function\)

```javascript
function pause() public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### \_setFundRaiseType

```javascript
function _setFundRaiseType(enum ISTO.FundRaiseType[] _fundRaiseTypes) internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_fundRaiseTypes | enum ISTO.FundRaiseType\[\] |  |

### \_canBuy

```javascript
function _canBuy(address _investor) internal view
returns(bool)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_investor | address |  |

### \_getKey

```javascript
function _getKey(bytes32 _key1, address _key2) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key1 | bytes32 |  |
| \_key2 | address |  |

