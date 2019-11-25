---
id: version-3.0.0-PolymathRegistry
title: PolymathRegistry
original_id: PolymathRegistry
---

# Core functionality for registry upgradability \(PolymathRegistry.sol\)

View Source: [contracts/PolymathRegistry.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/PolymathRegistry.sol)

**↗ Extends:** [**ReclaimTokens**](reclaimtokens.md)**,** [**IPolymathRegistry**](ipolymathregistry.md)

**PolymathRegistry**

## Contract Members

**Constants & Variables**

```javascript
mapping(bytes32 => address) public storedAddresses;
```

## Functions

* [getAddress\(string \_nameKey\)](polymathregistry.md#getaddress)
* [changeAddress\(string \_nameKey, address \_newAddress\)](polymathregistry.md#changeaddress)

### getAddress

⤾ overrides [IPolymathRegistry.getAddress](ipolymathregistry.md#getaddress)

Gets the contract address

```javascript
function getAddress(string _nameKey) external view
returns(address)
```

**Returns**

address

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the contract address mapping |

### changeAddress

⤾ overrides [IPolymathRegistry.changeAddress](ipolymathregistry.md#changeaddress)

Changes the contract address

```javascript
function changeAddress(string _nameKey, address _newAddress) external nonpayable onlyOwner
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the contract address mapping |
| \_newAddress | address | is the new contract address |

