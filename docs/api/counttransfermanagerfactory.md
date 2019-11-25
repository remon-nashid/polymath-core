---
id: version-3.0.0-CountTransferManagerFactory
title: CountTransferManagerFactory
original_id: CountTransferManagerFactory
---

# Factory for deploying CountTransferManager module \(CountTransferManagerFactory.sol\)

View Source: [contracts/modules/TransferManager/CTM/CountTransferManagerFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/CTM/CountTransferManagerFactory.sol)

**↗ Extends:** [**UpgradableModuleFactory**](upgradablemodulefactory.md)

**CountTransferManagerFactory**

## Functions

* [\(uint256 \_setupCost, address \_logicContract, address \_polymathRegistry, bool \_isCostInPoly\)](counttransfermanagerfactory.md)
* [deploy\(bytes \_data\)](counttransfermanagerfactory.md#deploy)

Constructor

```javascript
function (uint256 _setupCost, address _logicContract, address _polymathRegistry, bool _isCostInPoly) public nonpayable UpgradableModuleFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 | Setup cost of the module |
| \_logicContract | address | Contract address that contains the logic related to `description` |
| \_polymathRegistry | address | Address of the Polymath registry |
| \_isCostInPoly | bool | true = cost in Poly, false = USD |

### deploy

⤾ overrides [IModuleFactory.deploy](imodulefactory.md#deploy)

Used to launch the Module with the help of factory

```javascript
function deploy(bytes _data) external nonpayable
returns(address)
```

**Returns**

address Contract address of the Module

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_data | bytes | Data used for the intialization of the module factory variables |

