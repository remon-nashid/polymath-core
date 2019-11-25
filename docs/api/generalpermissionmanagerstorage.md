---
id: version-3.0.0-GeneralPermissionManagerStorage
title: GeneralPermissionManagerStorage
original_id: GeneralPermissionManagerStorage
---

# Contract used to store layout for the GeneralPermissionManager storage \(GeneralPermissionManagerStor

View Source: [contracts/modules/PermissionManager/GeneralPermissionManagerStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/PermissionManager/GeneralPermissionManagerStorage.sol)

**↘ Derived Contracts:** [**GeneralPermissionManager**](generalpermissionmanager.md)**,** [**GeneralPermissionManagerProxy**](generalpermissionmanagerproxy.md)

**GeneralPermissionManagerStorage**

## Contract Members

**Constants & Variables**

```javascript
mapping(address => mapping(address => mapping(bytes32 => bool))) public perms;
mapping(address => bytes32) public delegateDetails;
address[] public allDelegates;
```

## Functions

