---
id: version-3.0.0-TestSTOFactory
title: TestSTOFactory
original_id: TestSTOFactory
---

# TestSTOFactory.sol

View Source: [contracts/mocks/TestSTOFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/mocks/TestSTOFactory.sol)

**↗ Extends:** [**DummySTOFactory**](dummystofactory.md)

**TestSTOFactory**

## Functions

* [\(uint256 \_setupCost, address \_logicContract, address \_polymathRegistry, bool \_isFeeInPoly\)](teststofactory.md)
* [getTags\(\)](teststofactory.md#gettags)

Constructor

```javascript
function (uint256 _setupCost, address _logicContract, address _polymathRegistry, bool _isFeeInPoly) public nonpayable DummySTOFactory
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_setupCost | uint256 | Setup cost of the module |
| \_logicContract | address | Contract address that contains the logic related to `description` |
| \_polymathRegistry | address | Address of the Polymath Registry |
| \_isFeeInPoly | bool |  |

### getTags

⤾ overrides [ModuleFactory.getTags](modulefactory.md#gettags)

Gets the tags related to the module factory

```javascript
function getTags() external view
returns(bytes32[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


