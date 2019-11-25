---
id: version-3.0.0-ICheckPermission
title: ICheckPermission
original_id: ICheckPermission
---

# ICheckPermission.sol

View Source: [contracts/interfaces/ICheckPermission.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/ICheckPermission.sol)

**ICheckPermission**

## Functions

* [checkPermission\(address \_delegate, address \_module, bytes32 \_perm\)](icheckpermission.md#checkpermission)

### checkPermission

Validate permissions with PermissionManager if it exists, If no Permission return false

```javascript
function checkPermission(address _delegate, address _module, bytes32 _perm) external view
returns(hasPerm bool)
```

**Returns**

success

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_delegate | address | address of delegate |
| \_module | address | address of PermissionManager module |
| \_perm | bytes32 | the permissions |

