---
id: version-3.0.0-IModuleRegistry
title: IModuleRegistry
original_id: IModuleRegistry
---

# Interface for the Polymath Module Registry contract \(IModuleRegistry.sol\)

View Source: [contracts/interfaces/IModuleRegistry.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IModuleRegistry.sol)

**↘ Derived Contracts:** [**ModuleRegistry**](moduleregistry.md)

**IModuleRegistry**

**Events**

```javascript
event Pause(address  account);
event Unpause(address  account);
event ModuleUsed(address indexed _moduleFactory, address indexed _securityToken);
event ModuleRegistered(address indexed _moduleFactory, address indexed _owner);
event ModuleVerified(address indexed _moduleFactory);
event ModuleUnverified(address indexed _moduleFactory);
event ModuleRemoved(address indexed _moduleFactory, address indexed _decisionMaker);
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
```

## Functions

* [useModule\(address \_moduleFactory\)](imoduleregistry.md#usemodule)
* [useModule\(address \_moduleFactory, bool \_isUpgrade\)](imoduleregistry.md#usemodule)
* [registerModule\(address \_moduleFactory\)](imoduleregistry.md#registermodule)
* [removeModule\(address \_moduleFactory\)](imoduleregistry.md#removemodule)
* [isCompatibleModule\(address \_moduleFactory, address \_securityToken\)](imoduleregistry.md#iscompatiblemodule)
* [verifyModule\(address \_moduleFactory\)](imoduleregistry.md#verifymodule)
* [unverifyModule\(address \_moduleFactory\)](imoduleregistry.md#unverifymodule)
* [getFactoryDetails\(address \_factoryAddress\)](imoduleregistry.md#getfactorydetails)
* [getTagsByTypeAndToken\(uint8 \_moduleType, address \_securityToken\)](imoduleregistry.md#gettagsbytypeandtoken)
* [getTagsByType\(uint8 \_moduleType\)](imoduleregistry.md#gettagsbytype)
* [getAllModulesByType\(uint8 \_moduleType\)](imoduleregistry.md#getallmodulesbytype)
* [getModulesByType\(uint8 \_moduleType\)](imoduleregistry.md#getmodulesbytype)
* [getModulesByTypeAndToken\(uint8 \_moduleType, address \_securityToken\)](imoduleregistry.md#getmodulesbytypeandtoken)
* [updateFromRegistry\(\)](imoduleregistry.md#updatefromregistry)
* [owner\(\)](imoduleregistry.md#owner)
* [isPaused\(\)](imoduleregistry.md#ispaused)
* [reclaimERC20\(address \_tokenContract\)](imoduleregistry.md#reclaimerc20)
* [pause\(\)](imoduleregistry.md#pause)
* [unpause\(\)](imoduleregistry.md#unpause)
* [transferOwnership\(address \_newOwner\)](imoduleregistry.md#transferownership)

### useModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.useModule](moduleregistry.md#usemodule)

Called by a security token \(2.x\) to notify the registry it is using a module

```javascript
function useModule(address _moduleFactory) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the relevant module factory |

### useModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.useModule](moduleregistry.md#usemodule)

Called by a security token to notify the registry it is using a module

```javascript
function useModule(address _moduleFactory, bool _isUpgrade) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the relevant module factory |
| \_isUpgrade | bool | whether the use is part of an existing module upgrade |

### registerModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.registerModule](moduleregistry.md#registermodule)

Called by the ModuleFactory owner to register new modules for SecurityToken to use

```javascript
function registerModule(address _moduleFactory) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the module factory to be registered |

### removeModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.removeModule](moduleregistry.md#removemodule)

Called by the ModuleFactory owner or registry curator to delete a ModuleFactory

```javascript
function removeModule(address _moduleFactory) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the module factory to be deleted |

### isCompatibleModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.isCompatibleModule](moduleregistry.md#iscompatiblemodule)

Check that a module and its factory are compatible

```javascript
function isCompatibleModule(address _moduleFactory, address _securityToken) external view
returns(isCompatible bool)
```

**Returns**

bool whether module and token are compatible

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the relevant module factory |
| \_securityToken | address | is the address of the relevant security token |

### verifyModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.verifyModule](moduleregistry.md#verifymodule)

Called by Polymath to verify modules for SecurityToken to use.

```javascript
function verifyModule(address _moduleFactory) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the module factory to be registered |

### unverifyModule

⤿ Overridden Implementation\(s\): [ModuleRegistry.unverifyModule](moduleregistry.md#unverifymodule)

Called by Polymath to unverify modules for SecurityToken to use.

```javascript
function unverifyModule(address _moduleFactory) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleFactory | address | is the address of the module factory to be registered |

### getFactoryDetails

⤿ Overridden Implementation\(s\): [ModuleRegistry.getFactoryDetails](moduleregistry.md#getfactorydetails)

Returns the verified status, and reputation of the entered Module Factory

```javascript
function getFactoryDetails(address _factoryAddress) external view
returns(isVerified bool, factoryOwner address, usingTokens address[])
```

**Returns**

bool indicating whether module factory is verified

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_factoryAddress | address | is the address of the module factory |

### getTagsByTypeAndToken

⤿ Overridden Implementation\(s\): [ModuleRegistry.getTagsByTypeAndToken](moduleregistry.md#gettagsbytypeandtoken)

Returns all the tags related to the a module type which are valid for the given token

```javascript
function getTagsByTypeAndToken(uint8 _moduleType, address _securityToken) external view
returns(tags bytes32[], factories address[])
```

**Returns**

list of tags

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleType | uint8 | is the module type |
| \_securityToken | address | is the token |

### getTagsByType

⤿ Overridden Implementation\(s\): [ModuleRegistry.getTagsByType](moduleregistry.md#gettagsbytype)

Returns all the tags related to the a module type which are valid for the given token

```javascript
function getTagsByType(uint8 _moduleType) external view
returns(tags bytes32[], factories address[])
```

**Returns**

list of tags

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleType | uint8 | is the module type |

### getAllModulesByType

⤿ Overridden Implementation\(s\): [ModuleRegistry.getAllModulesByType](moduleregistry.md#getallmodulesbytype)

Returns the list of addresses of all Module Factory of a particular type

```javascript
function getAllModulesByType(uint8 _moduleType) external view
returns(factories address[])
```

**Returns**

address array that contains the list of addresses of module factory contracts.

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleType | uint8 | Type of Module |

### getModulesByType

⤿ Overridden Implementation\(s\): [ModuleRegistry.getModulesByType](moduleregistry.md#getmodulesbytype)

Returns the list of addresses of Module Factory of a particular type

```javascript
function getModulesByType(uint8 _moduleType) external view
returns(factories address[])
```

**Returns**

address array that contains the list of addresses of module factory contracts.

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleType | uint8 | Type of Module |

### getModulesByTypeAndToken

⤿ Overridden Implementation\(s\): [ModuleRegistry.getModulesByTypeAndToken](moduleregistry.md#getmodulesbytypeandtoken)

Returns the list of available Module factory addresses of a particular type for a given token.

```javascript
function getModulesByTypeAndToken(uint8 _moduleType, address _securityToken) external view
returns(factories address[])
```

**Returns**

address array that contains the list of available addresses of module factory contracts.

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_moduleType | uint8 | is the module type to look for |
| \_securityToken | address | is the address of SecurityToken |

### updateFromRegistry

⤿ Overridden Implementation\(s\): [ModuleRegistry.updateFromRegistry](moduleregistry.md#updatefromregistry)

Use to get the latest contract address of the regstries

```javascript
function updateFromRegistry() external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### owner

⤿ Overridden Implementation\(s\): [ModuleRegistry.owner](moduleregistry.md#owner)

Get the owner of the contract

```javascript
function owner() external view
returns(ownerAddress address)
```

**Returns**

address owner

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### isPaused

⤿ Overridden Implementation\(s\): [ModuleRegistry.isPaused](moduleregistry.md#ispaused)

Check whether the contract operations is paused or not

```javascript
function isPaused() external view
returns(paused bool)
```

**Returns**

bool

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### reclaimERC20

⤿ Overridden Implementation\(s\): [ModuleRegistry.reclaimERC20](moduleregistry.md#reclaimerc20)

Reclaims all ERC20Basic compatible tokens

```javascript
function reclaimERC20(address _tokenContract) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_tokenContract | address | The address of the token contract |

### pause

⤿ Overridden Implementation\(s\): [ModuleRegistry.pause](moduleregistry.md#pause)

Called by the owner to pause, triggers stopped state

```javascript
function pause() external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### unpause

⤿ Overridden Implementation\(s\): [ModuleRegistry.unpause](moduleregistry.md#unpause)

Called by the owner to unpause, returns to normal state

```javascript
function unpause() external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### transferOwnership

⤿ Overridden Implementation\(s\): [ModuleRegistry.transferOwnership](moduleregistry.md#transferownership)

Allows the current owner to transfer control of the contract to a newOwner.

```javascript
function transferOwnership(address _newOwner) external nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_newOwner | address | The address to transfer ownership to. |

