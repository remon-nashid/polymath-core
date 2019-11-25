---
id: version-3.0.0-Encoder
title: Encoder
original_id: Encoder
---

# Encoder.sol

View Source: [contracts/libraries/Encoder.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/libraries/Encoder.sol)

**Encoder**

## Functions

* [getKey\(string \_key\)](encoder.md#getkey)
* [getKey\(string \_key1, address \_key2\)](encoder.md#getkey)
* [getKey\(string \_key1, string \_key2\)](encoder.md#getkey)
* [getKey\(string \_key1, uint256 \_key2\)](encoder.md#getkey)
* [getKey\(string \_key1, bytes32 \_key2\)](encoder.md#getkey)
* [getKey\(string \_key1, bool \_key2\)](encoder.md#getkey)

### getKey

```javascript
function getKey(string _key) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key | string |  |

### getKey

```javascript
function getKey(string _key1, address _key2) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key1 | string |  |
| \_key2 | address |  |

### getKey

```javascript
function getKey(string _key1, string _key2) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key1 | string |  |
| \_key2 | string |  |

### getKey

```javascript
function getKey(string _key1, uint256 _key2) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key1 | string |  |
| \_key2 | uint256 |  |

### getKey

```javascript
function getKey(string _key1, bytes32 _key2) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key1 | string |  |
| \_key2 | bytes32 |  |

### getKey

```javascript
function getKey(string _key1, bool _key2) internal pure
returns(bytes32)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_key1 | string |  |
| \_key2 | bool |  |

