---
id: version-3.0.0-IOwnable
title: IOwnable
original_id: IOwnable
---

# Ownable \(IOwnable.sol\)

View Source: [contracts/interfaces/IOwnable.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IOwnable.sol)

**IOwnable**

The Ownable contract has an owner address, and provides basic authorization control functions, this simplifies the implementation of "user permissions".

## Functions

* [owner\(\)](iownable.md#owner)
* [renounceOwnership\(\)](iownable.md#renounceownership)
* [transferOwnership\(address \_newOwner\)](iownable.md#transferownership)

### owner

Returns owner

```javascript
function owner() external view
returns(ownerAddress address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### renounceOwnership

Allows the current owner to relinquish control of the contract.

```javascript
function renounceOwnership() external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### transferOwnership

Allows the current owner to transfer control of the contract to a newOwner.

```javascript
function transferOwnership(address _newOwner) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_newOwner | address | The address to transfer ownership to. |

