---
id: version-3.0.0-TrackedRedemption
title: TrackedRedemption
original_id: TrackedRedemption
---

# Burn module for burning tokens and keeping track of burnt amounts \(TrackedRedemption.sol\)

View Source: [contracts/modules/Experimental/Burn/TrackedRedemption.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Experimental/Burn/TrackedRedemption.sol)

**↗ Extends:** [**IBurn**](iburn.md)**,** [**Module**](module.md) **↘ Derived Contracts:** [**MockRedemptionManager**](mockredemptionmanager.md)

**TrackedRedemption**

## Contract Members

**Constants & Variables**

```javascript
mapping(address => uint256) internal redeemedTokens;
```

**Events**

```javascript
event Redeemed(address  _investor, uint256  _value);
```

## Functions

* [\(address \_securityToken, address \_polyToken\)](trackedredemption.md)
* [getInitFunction\(\)](trackedredemption.md#getinitfunction)
* [redeemTokens\(uint256 \_value\)](trackedredemption.md#redeemtokens)
* [getPermissions\(\)](trackedredemption.md#getpermissions)

Constructor

```javascript
function (address _securityToken, address _polyToken) public nonpayable Module
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_securityToken | address | Address of the security token |
| \_polyToken | address |  |

### getInitFunction

⤾ overrides [IModule.getInitFunction](imodule.md#getinitfunction)

This function returns the signature of configure function

```javascript
function getInitFunction() public pure
returns(bytes4)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### redeemTokens

To redeem tokens and track redemptions

```javascript
function redeemTokens(uint256 _value) public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_value | uint256 | The number of tokens to redeem |

### getPermissions

⤾ overrides [IModule.getPermissions](imodule.md#getpermissions)

Returns the permissions flag that are associated with CountTransferManager

```javascript
function getPermissions() public view
returns(bytes32[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


