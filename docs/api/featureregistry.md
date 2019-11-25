---
id: version-3.0.0-FeatureRegistry
title: FeatureRegistry
original_id: FeatureRegistry
---

# Registry for managing polymath feature switches \(FeatureRegistry.sol\)

View Source: [contracts/FeatureRegistry.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/FeatureRegistry.sol)

**↗ Extends:** [**IFeatureRegistry**](ifeatureregistry.md)**,** [**ReclaimTokens**](reclaimtokens.md)

**FeatureRegistry**

## Contract Members

**Constants & Variables**

```javascript
mapping(bytes32 => bool) public featureStatus;
```

## Functions

* [getFeatureStatus\(string \_nameKey\)](featureregistry.md#getfeaturestatus)
* [setFeatureStatus\(string \_nameKey, bool \_newStatus\)](featureregistry.md#setfeaturestatus)

### getFeatureStatus

⤾ overrides [IFeatureRegistry.getFeatureStatus](ifeatureregistry.md#getfeaturestatus)

Get the status of a feature

```javascript
function getFeatureStatus(string _nameKey) external view
returns(bool)
```

**Returns**

bool

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the feature status mapping |

### setFeatureStatus

⤾ overrides [IFeatureRegistry.setFeatureStatus](ifeatureregistry.md#setfeaturestatus)

change a feature status

```javascript
function setFeatureStatus(string _nameKey, bool _newStatus) external nonpayable onlyOwner
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the feature status mapping |
| \_newStatus | bool | is the new feature status |

