---
id: version-3.0.0-Proxy
title: Proxy
original_id: Proxy
---

# Proxy \(Proxy.sol\)

View Source: [contracts/proxy/Proxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/proxy/Proxy.sol)

**↘ Derived Contracts:** [**DataStoreProxy**](datastoreproxy.md)**,** [**SecurityToken**](securitytoken.md)**,** [**SecurityTokenRegistry**](securitytokenregistry.md)**,** [**UpgradeabilityProxy**](upgradeabilityproxy.md)

**Proxy**

Gives the possibility to delegate any call to a foreign implementation.

## Functions

* [\_implementation\(\)](proxy.md#_implementation)
* [\_fallback\(\)](proxy.md#_fallback)
* [\_delegate\(address implementation\)](proxy.md#_delegate)
* [\(\)](proxy.md)

### \_implementation

⤿ Overridden Implementation\(s\): [DataStoreProxy.\_implementation](datastoreproxy.md#_implementation),[OwnedUpgradeabilityProxy.\_implementation](ownedupgradeabilityproxy.md#_implementation),[SecurityToken.\_implementation](securitytoken.md#_implementation),[SecurityTokenRegistry.\_implementation](securitytokenregistry.md#_implementation)

Tells the address of the implementation where every call will be delegated.

```javascript
function _implementation() internal view
returns(address)
```

**Returns**

address of the implementation to which it will be delegated

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### \_fallback

Fallback function. Implemented entirely in `_fallback`.

```javascript
function _fallback() internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### \_delegate

Fallback function allowing to perform a delegatecall to the given implementation. This function will return whatever the implementation call returns

```javascript
function _delegate(address implementation) internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| implementation | address |  |

```javascript
function () external payable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


