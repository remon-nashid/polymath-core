---
id: version-3.0.0-IFeatureRegistry
title: IFeatureRegistry
original_id: IFeatureRegistry
---

# Interface for managing polymath feature switches \(IFeatureRegistry.sol\)

View Source: [contracts/interfaces/IFeatureRegistry.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IFeatureRegistry.sol)

**↘ Derived Contracts:** [**FeatureRegistry**](featureregistry.md)

**IFeatureRegistry**

**Events**

```javascript
event ChangeFeatureStatus(string  _nameKey, bool  _newStatus);
```

## Functions

* [setFeatureStatus\(string \_nameKey, bool \_newStatus\)](ifeatureregistry.md#setfeaturestatus)
* [getFeatureStatus\(string \_nameKey\)](ifeatureregistry.md#getfeaturestatus)

### setFeatureStatus

⤿ Overridden Implementation\(s\): [FeatureRegistry.setFeatureStatus](featureregistry.md#setfeaturestatus)

change a feature status

```javascript
function setFeatureStatus(string _nameKey, bool _newStatus) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the feature status mapping |
| \_newStatus | bool | is the new feature status |

### getFeatureStatus

⤿ Overridden Implementation\(s\): [FeatureRegistry.getFeatureStatus](featureregistry.md#getfeaturestatus)

Get the status of a feature

```javascript
function getFeatureStatus(string _nameKey) external view
returns(hasFeature bool)
```

**Returns**

bool

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_nameKey | string | is the key for the feature status mapping |

