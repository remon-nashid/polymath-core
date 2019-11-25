---
id: version-3.0.0-DataStoreProxy
title: DataStoreProxy
original_id: DataStoreProxy
---

# DataStoreProxy Proxy \(DataStoreProxy.sol\)

View Source: [contracts/datastore/DataStoreProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/datastore/DataStoreProxy.sol)

**↗ Extends:** [**DataStoreStorage**](datastorestorage.md)**,** [**Proxy**](proxy.md)

**DataStoreProxy**

## Functions

* [\(address \_securityToken, address \_implementation\)](datastoreproxy.md)
* [\_implementation\(\)](datastoreproxy.md#_implementation)

Constructor

```javascript
function (address _securityToken, address _implementation) public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_securityToken | address | Address of the security token |
| \_implementation | address | representing the address of the new implementation to be set |

### \_implementation

⤾ overrides [Proxy.\_implementation](proxy.md#_implementation)

Internal function to provide the address of the implementation contract

```javascript
function _implementation() internal view
returns(address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


