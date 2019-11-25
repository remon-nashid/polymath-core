---
id: version-3.0.0-ReentrancyGuard
title: ReentrancyGuard
original_id: ReentrancyGuard
---

# Helps contracts guard against reentrancy attacks. \(ReentrancyGuard.sol\)

View Source: [openzeppelin-solidity/contracts/utils/ReentrancyGuard.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/openzeppelin-solidity/contracts/utils/ReentrancyGuard.sol)

**↘ Derived Contracts:** [**CappedSTO**](cappedsto.md)**,** [**CappedSTOProxy**](cappedstoproxy.md)**,** [**DummySTOProxy**](dummystoproxy.md)**,** [**GeneralPermissionManagerProxy**](generalpermissionmanagerproxy.md)**,** [**PreSaleSTOProxy**](presalestoproxy.md)**,** [**SecurityToken**](securitytoken.md)**,** [**USDTieredSTOProxy**](usdtieredstoproxy.md)

**ReentrancyGuard**

If you mark a function `nonReentrant`, you should also mark it `external`.

## Contract Members

**Constants & Variables**

```javascript
uint256 private _guardCounter;
```

## Modifiers

* [nonReentrant](reentrancyguard.md#nonreentrant)

### nonReentrant

Prevents a contract from calling itself, directly or indirectly. Calling a `nonReentrant` function from another `nonReentrant` function is not supported. It is possible to prevent this from happening by making the `nonReentrant` function external, and make it call a `private` function that does the actual work.

```javascript
modifier nonReentrant() internal
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


## Functions

* [\(\)](reentrancyguard.md)

```javascript
function () internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


