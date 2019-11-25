---
id: version-3.0.0-IDataStore
title: IDataStore
original_id: IDataStore
---

# IDataStore.sol

View Source: [contracts/interfaces/IDataStore.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IDataStore.sol)

**↘ Derived Contracts:** [**DataStore**](datastore.md)

**IDataStore**

## Functions

* [setSecurityToken\(address \_securityToken\)](idatastore.md#setsecuritytoken)
* [setUint256\(bytes32 \_key, uint256 \_data\)](idatastore.md#setuint256)
* [setBytes32\(bytes32 \_key, bytes32 \_data\)](idatastore.md#setbytes32)
* [setAddress\(bytes32 \_key, address \_data\)](idatastore.md#setaddress)
* [setString\(bytes32 \_key, string \_data\)](idatastore.md#setstring)
* [setBytes\(bytes32 \_key, bytes \_data\)](idatastore.md#setbytes)
* [setBool\(bytes32 \_key, bool \_data\)](idatastore.md#setbool)
* [setUint256Array\(bytes32 \_key, uint256\[\] \_data\)](idatastore.md#setuint256array)
* [setBytes32Array\(bytes32 \_key, bytes32\[\] \_data\)](idatastore.md#setbytes32array)
* [setAddressArray\(bytes32 \_key, address\[\] \_data\)](idatastore.md#setaddressarray)
* [setBoolArray\(bytes32 \_key, bool\[\] \_data\)](idatastore.md#setboolarray)
* [insertUint256\(bytes32 \_key, uint256 \_data\)](idatastore.md#insertuint256)
* [insertBytes32\(bytes32 \_key, bytes32 \_data\)](idatastore.md#insertbytes32)
* [insertAddress\(bytes32 \_key, address \_data\)](idatastore.md#insertaddress)
* [insertBool\(bytes32 \_key, bool \_data\)](idatastore.md#insertbool)
* [deleteUint256\(bytes32 \_key, uint256 \_index\)](idatastore.md#deleteuint256)
* [deleteBytes32\(bytes32 \_key, uint256 \_index\)](idatastore.md#deletebytes32)
* [deleteAddress\(bytes32 \_key, uint256 \_index\)](idatastore.md#deleteaddress)
* [deleteBool\(bytes32 \_key, uint256 \_index\)](idatastore.md#deletebool)
* [setUint256Multi\(bytes32\[\] \_keys, uint256\[\] \_data\)](idatastore.md#setuint256multi)
* [setBytes32Multi\(bytes32\[\] \_keys, bytes32\[\] \_data\)](idatastore.md#setbytes32multi)
* [setAddressMulti\(bytes32\[\] \_keys, address\[\] \_data\)](idatastore.md#setaddressmulti)
* [setBoolMulti\(bytes32\[\] \_keys, bool\[\] \_data\)](idatastore.md#setboolmulti)
* [insertUint256Multi\(bytes32\[\] \_keys, uint256\[\] \_data\)](idatastore.md#insertuint256multi)
* [insertBytes32Multi\(bytes32\[\] \_keys, bytes32\[\] \_data\)](idatastore.md#insertbytes32multi)
* [insertAddressMulti\(bytes32\[\] \_keys, address\[\] \_data\)](idatastore.md#insertaddressmulti)
* [insertBoolMulti\(bytes32\[\] \_keys, bool\[\] \_data\)](idatastore.md#insertboolmulti)
* [getUint256\(bytes32 \_key\)](idatastore.md#getuint256)
* [getBytes32\(bytes32 \_key\)](idatastore.md#getbytes32)
* [getAddress\(bytes32 \_key\)](idatastore.md#getaddress)
* [getString\(bytes32 \_key\)](idatastore.md#getstring)
* [getBytes\(bytes32 \_key\)](idatastore.md#getbytes)
* [getBool\(bytes32 \_key\)](idatastore.md#getbool)
* [getUint256Array\(bytes32 \_key\)](idatastore.md#getuint256array)
* [getBytes32Array\(bytes32 \_key\)](idatastore.md#getbytes32array)
* [getAddressArray\(bytes32 \_key\)](idatastore.md#getaddressarray)
* [getBoolArray\(bytes32 \_key\)](idatastore.md#getboolarray)
* [getUint256ArrayLength\(bytes32 \_key\)](idatastore.md#getuint256arraylength)
* [getBytes32ArrayLength\(bytes32 \_key\)](idatastore.md#getbytes32arraylength)
* [getAddressArrayLength\(bytes32 \_key\)](idatastore.md#getaddressarraylength)
* [getBoolArrayLength\(bytes32 \_key\)](idatastore.md#getboolarraylength)
* [getUint256ArrayElement\(bytes32 \_key, uint256 \_index\)](idatastore.md#getuint256arrayelement)
* [getBytes32ArrayElement\(bytes32 \_key, uint256 \_index\)](idatastore.md#getbytes32arrayelement)
* [getAddressArrayElement\(bytes32 \_key, uint256 \_index\)](idatastore.md#getaddressarrayelement)
* [getBoolArrayElement\(bytes32 \_key, uint256 \_index\)](idatastore.md#getboolarrayelement)
* [getUint256ArrayElements\(bytes32 \_key, uint256 \_startIndex, uint256 \_endIndex\)](idatastore.md#getuint256arrayelements)
* [getBytes32ArrayElements\(bytes32 \_key, uint256 \_startIndex, uint256 \_endIndex\)](idatastore.md#getbytes32arrayelements)
* [getAddressArrayElements\(bytes32 \_key, uint256 \_startIndex, uint256 \_endIndex\)](idatastore.md#getaddressarrayelements)
* [getBoolArrayElements\(bytes32 \_key, uint256 \_startIndex, uint256 \_endIndex\)](idatastore.md#getboolarrayelements)

### setSecurityToken

⤿ Overridden Implementation\(s\): [DataStore.setSecurityToken](datastore.md#setsecuritytoken)

Changes security token atatched to this data store

```javascript
function setSecurityToken(address _securityToken) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_securityToken | address | address of the security token |

### setUint256

⤿ Overridden Implementation\(s\): [DataStore.setUint256](datastore.md#setuint256)

Stores a uint256 data against a key

```javascript
function setUint256(bytes32 _key, uint256 _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 | Unique key to identify the data |
| \_data | uint256 | Data to be stored against the key |

### setBytes32

⤿ Overridden Implementation\(s\): [DataStore.setBytes32](datastore.md#setbytes32)

```javascript
function setBytes32(bytes32 _key, bytes32 _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bytes32 |  |

### setAddress

⤿ Overridden Implementation\(s\): [DataStore.setAddress](datastore.md#setaddress)

```javascript
function setAddress(bytes32 _key, address _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | address |  |

### setString

⤿ Overridden Implementation\(s\): [DataStore.setString](datastore.md#setstring)

```javascript
function setString(bytes32 _key, string _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | string |  |

### setBytes

⤿ Overridden Implementation\(s\): [DataStore.setBytes](datastore.md#setbytes)

```javascript
function setBytes(bytes32 _key, bytes _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bytes |  |

### setBool

⤿ Overridden Implementation\(s\): [DataStore.setBool](datastore.md#setbool)

```javascript
function setBool(bytes32 _key, bool _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bool |  |

### setUint256Array

⤿ Overridden Implementation\(s\): [DataStore.setUint256Array](datastore.md#setuint256array)

Stores a uint256 array against a key

```javascript
function setUint256Array(bytes32 _key, uint256[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 | Unique key to identify the array |
| \_data | uint256\[\] | Array to be stored against the key |

### setBytes32Array

⤿ Overridden Implementation\(s\): [DataStore.setBytes32Array](datastore.md#setbytes32array)

```javascript
function setBytes32Array(bytes32 _key, bytes32[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bytes32\[\] |  |

### setAddressArray

⤿ Overridden Implementation\(s\): [DataStore.setAddressArray](datastore.md#setaddressarray)

```javascript
function setAddressArray(bytes32 _key, address[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | address\[\] |  |

### setBoolArray

⤿ Overridden Implementation\(s\): [DataStore.setBoolArray](datastore.md#setboolarray)

```javascript
function setBoolArray(bytes32 _key, bool[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bool\[\] |  |

### insertUint256

⤿ Overridden Implementation\(s\): [DataStore.insertUint256](datastore.md#insertuint256)

Inserts a uint256 element to the array identified by the key

```javascript
function insertUint256(bytes32 _key, uint256 _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 | Unique key to identify the array |
| \_data | uint256 | Element to push into the array |

### insertBytes32

⤿ Overridden Implementation\(s\): [DataStore.insertBytes32](datastore.md#insertbytes32)

```javascript
function insertBytes32(bytes32 _key, bytes32 _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bytes32 |  |

### insertAddress

⤿ Overridden Implementation\(s\): [DataStore.insertAddress](datastore.md#insertaddress)

```javascript
function insertAddress(bytes32 _key, address _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | address |  |

### insertBool

⤿ Overridden Implementation\(s\): [DataStore.insertBool](datastore.md#insertbool)

```javascript
function insertBool(bytes32 _key, bool _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_data | bool |  |

### deleteUint256

⤿ Overridden Implementation\(s\): [DataStore.deleteUint256](datastore.md#deleteuint256)

Deletes an element from the array identified by the key. When an element is deleted from an Array, last element of that array is moved to the index of deleted element.

```javascript
function deleteUint256(bytes32 _key, uint256 _index) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 | Unique key to identify the array |
| \_index | uint256 | Index of the element to delete |

### deleteBytes32

⤿ Overridden Implementation\(s\): [DataStore.deleteBytes32](datastore.md#deletebytes32)

```javascript
function deleteBytes32(bytes32 _key, uint256 _index) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### deleteAddress

⤿ Overridden Implementation\(s\): [DataStore.deleteAddress](datastore.md#deleteaddress)

```javascript
function deleteAddress(bytes32 _key, uint256 _index) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### deleteBool

⤿ Overridden Implementation\(s\): [DataStore.deleteBool](datastore.md#deletebool)

```javascript
function deleteBool(bytes32 _key, uint256 _index) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### setUint256Multi

⤿ Overridden Implementation\(s\): [DataStore.setUint256Multi](datastore.md#setuint256multi)

Stores multiple uint256 data against respective keys

```javascript
function setUint256Multi(bytes32[] _keys, uint256[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] | Array of keys to identify the data |
| \_data | uint256\[\] | Array of data to be stored against the respective keys |

### setBytes32Multi

⤿ Overridden Implementation\(s\): [DataStore.setBytes32Multi](datastore.md#setbytes32multi)

```javascript
function setBytes32Multi(bytes32[] _keys, bytes32[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] |  |
| \_data | bytes32\[\] |  |

### setAddressMulti

⤿ Overridden Implementation\(s\): [DataStore.setAddressMulti](datastore.md#setaddressmulti)

```javascript
function setAddressMulti(bytes32[] _keys, address[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] |  |
| \_data | address\[\] |  |

### setBoolMulti

⤿ Overridden Implementation\(s\): [DataStore.setBoolMulti](datastore.md#setboolmulti)

```javascript
function setBoolMulti(bytes32[] _keys, bool[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] |  |
| \_data | bool\[\] |  |

### insertUint256Multi

⤿ Overridden Implementation\(s\): [DataStore.insertUint256Multi](datastore.md#insertuint256multi)

Inserts multiple uint256 elements to the array identified by the respective keys

```javascript
function insertUint256Multi(bytes32[] _keys, uint256[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] | Array of keys to identify the data |
| \_data | uint256\[\] | Array of data to be inserted in arrays of the respective keys |

### insertBytes32Multi

⤿ Overridden Implementation\(s\): [DataStore.insertBytes32Multi](datastore.md#insertbytes32multi)

```javascript
function insertBytes32Multi(bytes32[] _keys, bytes32[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] |  |
| \_data | bytes32\[\] |  |

### insertAddressMulti

⤿ Overridden Implementation\(s\): [DataStore.insertAddressMulti](datastore.md#insertaddressmulti)

```javascript
function insertAddressMulti(bytes32[] _keys, address[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] |  |
| \_data | address\[\] |  |

### insertBoolMulti

⤿ Overridden Implementation\(s\): [DataStore.insertBoolMulti](datastore.md#insertboolmulti)

```javascript
function insertBoolMulti(bytes32[] _keys, bool[] _data) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_keys | bytes32\[\] |  |
| \_data | bool\[\] |  |

### getUint256

⤿ Overridden Implementation\(s\): [DataStore.getUint256](datastore.md#getuint256)

```javascript
function getUint256(bytes32 _key) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBytes32

⤿ Overridden Implementation\(s\): [DataStore.getBytes32](datastore.md#getbytes32)

```javascript
function getBytes32(bytes32 _key) external view
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getAddress

⤿ Overridden Implementation\(s\): [DataStore.getAddress](datastore.md#getaddress)

```javascript
function getAddress(bytes32 _key) external view
returns(address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getString

⤿ Overridden Implementation\(s\): [DataStore.getString](datastore.md#getstring)

```javascript
function getString(bytes32 _key) external view
returns(string)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBytes

⤿ Overridden Implementation\(s\): [DataStore.getBytes](datastore.md#getbytes)

```javascript
function getBytes(bytes32 _key) external view
returns(bytes)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBool

⤿ Overridden Implementation\(s\): [DataStore.getBool](datastore.md#getbool)

```javascript
function getBool(bytes32 _key) external view
returns(bool)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getUint256Array

⤿ Overridden Implementation\(s\): [DataStore.getUint256Array](datastore.md#getuint256array)

```javascript
function getUint256Array(bytes32 _key) external view
returns(uint256[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBytes32Array

⤿ Overridden Implementation\(s\): [DataStore.getBytes32Array](datastore.md#getbytes32array)

```javascript
function getBytes32Array(bytes32 _key) external view
returns(bytes32[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getAddressArray

⤿ Overridden Implementation\(s\): [DataStore.getAddressArray](datastore.md#getaddressarray)

```javascript
function getAddressArray(bytes32 _key) external view
returns(address[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBoolArray

⤿ Overridden Implementation\(s\): [DataStore.getBoolArray](datastore.md#getboolarray)

```javascript
function getBoolArray(bytes32 _key) external view
returns(bool[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getUint256ArrayLength

⤿ Overridden Implementation\(s\): [DataStore.getUint256ArrayLength](datastore.md#getuint256arraylength)

```javascript
function getUint256ArrayLength(bytes32 _key) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBytes32ArrayLength

⤿ Overridden Implementation\(s\): [DataStore.getBytes32ArrayLength](datastore.md#getbytes32arraylength)

```javascript
function getBytes32ArrayLength(bytes32 _key) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getAddressArrayLength

⤿ Overridden Implementation\(s\): [DataStore.getAddressArrayLength](datastore.md#getaddressarraylength)

```javascript
function getAddressArrayLength(bytes32 _key) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getBoolArrayLength

⤿ Overridden Implementation\(s\): [DataStore.getBoolArrayLength](datastore.md#getboolarraylength)

```javascript
function getBoolArrayLength(bytes32 _key) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |

### getUint256ArrayElement

⤿ Overridden Implementation\(s\): [DataStore.getUint256ArrayElement](datastore.md#getuint256arrayelement)

```javascript
function getUint256ArrayElement(bytes32 _key, uint256 _index) external view
returns(uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### getBytes32ArrayElement

⤿ Overridden Implementation\(s\): [DataStore.getBytes32ArrayElement](datastore.md#getbytes32arrayelement)

```javascript
function getBytes32ArrayElement(bytes32 _key, uint256 _index) external view
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### getAddressArrayElement

⤿ Overridden Implementation\(s\): [DataStore.getAddressArrayElement](datastore.md#getaddressarrayelement)

```javascript
function getAddressArrayElement(bytes32 _key, uint256 _index) external view
returns(address)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### getBoolArrayElement

⤿ Overridden Implementation\(s\): [DataStore.getBoolArrayElement](datastore.md#getboolarrayelement)

```javascript
function getBoolArrayElement(bytes32 _key, uint256 _index) external view
returns(bool)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_index | uint256 |  |

### getUint256ArrayElements

⤿ Overridden Implementation\(s\): [DataStore.getUint256ArrayElements](datastore.md#getuint256arrayelements)

```javascript
function getUint256ArrayElements(bytes32 _key, uint256 _startIndex, uint256 _endIndex) external view
returns(uint256[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_startIndex | uint256 |  |
| \_endIndex | uint256 |  |

### getBytes32ArrayElements

⤿ Overridden Implementation\(s\): [DataStore.getBytes32ArrayElements](datastore.md#getbytes32arrayelements)

```javascript
function getBytes32ArrayElements(bytes32 _key, uint256 _startIndex, uint256 _endIndex) external view
returns(bytes32[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_startIndex | uint256 |  |
| \_endIndex | uint256 |  |

### getAddressArrayElements

⤿ Overridden Implementation\(s\): [DataStore.getAddressArrayElements](datastore.md#getaddressarrayelements)

```javascript
function getAddressArrayElements(bytes32 _key, uint256 _startIndex, uint256 _endIndex) external view
returns(address[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_startIndex | uint256 |  |
| \_endIndex | uint256 |  |

### getBoolArrayElements

⤿ Overridden Implementation\(s\): [DataStore.getBoolArrayElements](datastore.md#getboolarrayelements)

```javascript
function getBoolArrayElements(bytes32 _key, uint256 _startIndex, uint256 _endIndex) external view
returns(bool[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | bytes32 |  |
| \_startIndex | uint256 |  |
| \_endIndex | uint256 |  |

