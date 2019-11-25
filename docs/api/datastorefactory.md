---
id: version-3.0.0-DataStoreFactory
title: DataStoreFactory
original_id: DataStoreFactory
---

# DataStoreFactory.sol

View Source: [contracts/datastore/DataStoreFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/datastore/DataStoreFactory.sol)

**DataStoreFactory**

## Contract Members

**Constants & Variables**

```javascript
address public implementation;
```

## Functions

* [\(address \_implementation\)](datastorefactory.md)
* [generateDataStore\(address \_securityToken\)](datastorefactory.md#generatedatastore)

```javascript
function (address _implementation) public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_implementation | address |  |

### generateDataStore

```javascript
function generateDataStore(address _securityToken) public nonpayable
returns(address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_securityToken | address |  |

