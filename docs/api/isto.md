---
id: version-3.0.0-ISTO
title: ISTO
original_id: ISTO
---

# Interface to be implemented by all STO modules \(ISTO.sol\)

View Source: [contracts/interfaces/ISTO.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/ISTO.sol)

**↘ Derived Contracts:** [**STO**](sto.md)

**ISTO**

**Enums**

### FundRaiseType

```javascript
enum FundRaiseType {
 ETH,
 POLY,
 SC
}
```

**Events**

```javascript
event SetFundRaiseTypes(enum ISTO.FundRaiseType[]  _fundRaiseTypes);
```

## Functions

* [getTokensSold\(\)](isto.md#gettokenssold)
* [getRaised\(enum ISTO.FundRaiseType \_fundRaiseType\)](isto.md#getraised)
* [pause\(\)](isto.md#pause)

### getTokensSold

⤿ Overridden Implementation\(s\): [CappedSTO.getTokensSold](cappedsto.md#gettokenssold),[DummySTO.getTokensSold](dummysto.md#gettokenssold),[PreSaleSTO.getTokensSold](presalesto.md#gettokenssold),[STO.getTokensSold](sto.md#gettokenssold),[USDTieredSTO.getTokensSold](usdtieredsto.md#gettokenssold)

Returns the total no. of tokens sold

```javascript
function getTokensSold() external view
returns(soldTokens uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getRaised

⤿ Overridden Implementation\(s\): [STO.getRaised](sto.md#getraised)

Returns funds raised by the STO

```javascript
function getRaised(enum ISTO.FundRaiseType _fundRaiseType) external view
returns(raisedAmount uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_fundRaiseType | enum ISTO.FundRaiseType |  |

### pause

⤿ Overridden Implementation\(s\): [Module.pause](module.md#pause),[STO.pause](sto.md#pause)

Pause \(overridden function\)

```javascript
function pause() external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


