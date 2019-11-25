---
id: version-3.0.0-IPolymathRegistry
title: IPolymathRegistry
original_id: IPolymathRegistry
---

# IPolymathRegistry.sol

View Source: [contracts/interfaces/IPolymathRegistry.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IPolymathRegistry.sol)

**↘ Derived Contracts:** [**PolymathRegistry**](polymathregistry.md)

**IPolymathRegistry**

**Events**

```javascript
event ChangeAddress(string  _nameKey, address indexed _oldAddress, address indexed _newAddress);
```

## Functions

* [getAddress\(string \_nameKey\)](ipolymathregistry.md#getaddress)
* [changeAddress\(string \_nameKey, address \_newAddress\)](ipolymathregistry.md#changeaddress)

### getAddress

⤿ Overridden Implementation\(s\): [PolymathRegistry.getAddress](polymathregistry.md#getaddress)

Returns the contract address

```javascript
function getAddress(string _nameKey) external view
returns(registryAddress address)
```

**Returns**

address

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the contract address mapping |

### changeAddress

⤿ Overridden Implementation\(s\): [PolymathRegistry.changeAddress](polymathregistry.md#changeaddress)

Changes the contract address

```javascript
function changeAddress(string _nameKey, address _newAddress) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the contract address mapping |
| \_newAddress | address | is the new contract address |

