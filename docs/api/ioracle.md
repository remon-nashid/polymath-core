---
id: version-3.0.0-IOracle
title: IOracle
original_id: IOracle
---

# IOracle.sol

View Source: [contracts/interfaces/IOracle.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IOracle.sol)

**↘ Derived Contracts:** [**MakerDAOOracle**](makerdaooracle.md)**,** [**MockOracle**](mockoracle.md)**,** [**StableOracle**](stableoracle.md)

**IOracle**

## Functions

* [getCurrencyAddress\(\)](ioracle.md#getcurrencyaddress)
* [getCurrencySymbol\(\)](ioracle.md#getcurrencysymbol)
* [getCurrencyDenominated\(\)](ioracle.md#getcurrencydenominated)
* [getPrice\(\)](ioracle.md#getprice)

### getCurrencyAddress

⤿ Overridden Implementation\(s\): [MakerDAOOracle.getCurrencyAddress](makerdaooracle.md#getcurrencyaddress),[MockOracle.getCurrencyAddress](mockoracle.md#getcurrencyaddress),[StableOracle.getCurrencyAddress](stableoracle.md#getcurrencyaddress)

Returns address of oracle currency \(0x0 for ETH\)

```javascript
function getCurrencyAddress() external view
returns(currency address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getCurrencySymbol

⤿ Overridden Implementation\(s\): [MakerDAOOracle.getCurrencySymbol](makerdaooracle.md#getcurrencysymbol),[MockOracle.getCurrencySymbol](mockoracle.md#getcurrencysymbol),[StableOracle.getCurrencySymbol](stableoracle.md#getcurrencysymbol)

Returns symbol of oracle currency \(0x0 for ETH\)

```javascript
function getCurrencySymbol() external view
returns(symbol bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getCurrencyDenominated

⤿ Overridden Implementation\(s\): [MakerDAOOracle.getCurrencyDenominated](makerdaooracle.md#getcurrencydenominated),[MockOracle.getCurrencyDenominated](mockoracle.md#getcurrencydenominated),[StableOracle.getCurrencyDenominated](stableoracle.md#getcurrencydenominated)

Returns denomination of price

```javascript
function getCurrencyDenominated() external view
returns(denominatedCurrency bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### getPrice

⤿ Overridden Implementation\(s\): [MakerDAOOracle.getPrice](makerdaooracle.md#getprice),[MockOracle.getPrice](mockoracle.md#getprice),[StableOracle.getPrice](stableoracle.md#getprice)

Returns price - should throw if not valid

```javascript
function getPrice() external nonpayable
returns(price uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


