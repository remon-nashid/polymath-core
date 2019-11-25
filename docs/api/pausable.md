---
id: version-3.0.0-Pausable
title: Pausable
original_id: Pausable
---

# Utility contract to allow pausing and unpausing of certain functions \(Pausable.sol\)

View Source: [contracts/Pausable.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/Pausable.sol)

**↘ Derived Contracts:** [**BlacklistTransferManagerProxy**](blacklisttransfermanagerproxy.md)**,** [**CappedSTOProxy**](cappedstoproxy.md)**,** [**CountTransferManagerProxy**](counttransfermanagerproxy.md)**,** [**DummySTOProxy**](dummystoproxy.md)**,** [**ERC20DividendCheckpointProxy**](erc20dividendcheckpointproxy.md)**,** [**EtherDividendCheckpointProxy**](etherdividendcheckpointproxy.md)**,** [**GeneralPermissionManagerProxy**](generalpermissionmanagerproxy.md)**,** [**GeneralTransferManagerProxy**](generaltransfermanagerproxy.md)**,** [**LockUpTransferManagerProxy**](lockuptransfermanagerproxy.md)**,** [**ManualApprovalTransferManagerProxy**](manualapprovaltransfermanagerproxy.md)**,** [**Module**](module.md)**,** [**PercentageTransferManagerProxy**](percentagetransfermanagerproxy.md)**,** [**PLCRVotingCheckpointProxy**](plcrvotingcheckpointproxy.md)**,** [**PreSaleSTOProxy**](presalestoproxy.md)**,** [**USDTieredSTOProxy**](usdtieredstoproxy.md)**,** [**VestingEscrowWalletProxy**](vestingescrowwalletproxy.md)**,** [**VolumeRestrictionTMProxy**](volumerestrictiontmproxy.md)**,** [**WeightedVoteCheckpointProxy**](weightedvotecheckpointproxy.md)

**Pausable**

## Contract Members

**Constants & Variables**

```javascript
bool public paused;
```

**Events**

```javascript
event Pause(address  account);
event Unpause(address  account);
```

## Modifiers

* [whenNotPaused](pausable.md#whennotpaused)
* [whenPaused](pausable.md#whenpaused)

### whenNotPaused

Modifier to make a function callable only when the contract is not paused.

```javascript
modifier whenNotPaused() internal
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### whenPaused

Modifier to make a function callable only when the contract is paused.

```javascript
modifier whenPaused() internal
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


## Functions

* [\_pause\(\)](pausable.md#_pause)
* [\_unpause\(\)](pausable.md#_unpause)

### \_pause

Called by the owner to pause, triggers stopped state

```javascript
function _pause() internal nonpayable whenNotPaused
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### \_unpause

Called by the owner to unpause, returns to normal state

```javascript
function _unpause() internal nonpayable whenPaused
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


