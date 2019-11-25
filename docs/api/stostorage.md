---
id: version-3.0.0-STOStorage
title: STOStorage
original_id: STOStorage
---

# Storage layout for the STO contract \(STOStorage.sol\)

View Source: [contracts/storage/modules/STO/STOStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/storage/modules/STO/STOStorage.sol)

**↘ Derived Contracts:** [**CappedSTOProxy**](cappedstoproxy.md)**,** [**DummySTOProxy**](dummystoproxy.md)**,** [**PreSaleSTOProxy**](presalestoproxy.md)**,** [**STO**](sto.md)**,** [**USDTieredSTOProxy**](usdtieredstoproxy.md)

**STOStorage**

## Contract Members

**Constants & Variables**

```javascript
//internal members
bytes32 internal constant INVESTORFLAGS;

//public members
mapping(uint8 => bool) public fundRaiseTypes;
mapping(uint8 => uint256) public fundsRaised;
uint256 public startTime;
uint256 public endTime;
uint256 public pausedTime;
uint256 public investorCount;
address payable public wallet;
uint256 public totalTokensSold;
```

## Functions

