---
id: version-3.0.0-SignedTransferManagerFactory
title: SignedTransferManagerFactory
original_id: SignedTransferManagerFactory
---

# Factory for deploying SignedTransferManager module \(SignedTransferManagerFactory.sol\)

View Source: [contracts/modules/Experimental/TransferManager/SignedTransferManagerFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Experimental/TransferManager/SignedTransferManagerFactory.sol)

**↗ Extends:** [**ModuleFactory**](modulefactory.md)

**SignedTransferManagerFactory**

## Functions

* [\(uint256 \_setupCost, address \_polymathRegistry, bool \_isCostInPoly\)](signedtransfermanagerfactory.md)
* [deploy\(bytes \_data\)](signedtransfermanagerfactory.md#deploy)

Constructor

```javascript
function (uint256 _setupCost, address _polymathRegistry, bool _isCostInPoly) public nonpayable ModuleFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 |  |
| \_polymathRegistry | address |  |
| \_isCostInPoly | bool |  |

### deploy

⤾ overrides [IModuleFactory.deploy](imodulefactory.md#deploy)

used to launch the Module with the help of factory

```javascript
function deploy(bytes _data) external nonpayable
returns(address)
```

**Returns**

address Contract address of the Module

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_data | bytes |  |

