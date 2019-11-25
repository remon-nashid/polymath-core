---
id: version-3.0.0-MockFactory
title: MockFactory
original_id: MockFactory
---

# Mock Contract Not fit for production environment \(MockFactory.sol\)

View Source: [contracts/mocks/MockFactory.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/mocks/MockFactory.sol)

**↗ Extends:** [**DummySTOFactory**](dummystofactory.md)

**MockFactory**

## Contract Members

**Constants & Variables**

```javascript
bool public typesSwitch;
```

## Functions

* [\(uint256 \_setupCost, address \_logicContract, address \_polymathRegistry, bool \_isFeeInPoly\)](mockfactory.md)
* [getTypes\(\)](mockfactory.md#gettypes)
* [switchTypes\(\)](mockfactory.md#switchtypes)

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

### getTypes

⤾ overrides [ModuleFactory.getTypes](modulefactory.md#gettypes)

Type of the Module factory

```javascript
function getTypes() external view
returns(uint8[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


### switchTypes

```javascript
function switchTypes() external nonpayable onlyOwner
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


