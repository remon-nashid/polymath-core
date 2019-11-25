---
id: version-3.0.0-USDTieredSTOStorage
title: USDTieredSTOStorage
original_id: USDTieredSTOStorage
---

# Contract used to store layout for the USDTieredSTO storage \(USDTieredSTOStorage.sol\)

View Source: [contracts/modules/STO/USDTiered/USDTieredSTOStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/STO/USDTiered/USDTieredSTOStorage.sol)

**↘ Derived Contracts:** [**USDTieredSTO**](usdtieredsto.md)**,** [**USDTieredSTOProxy**](usdtieredstoproxy.md)

**USDTieredSTOStorage**

## Structs

### Tier

```javascript
struct Tier {
 uint256 rate,
 uint256 rateDiscountPoly,
 uint256 tokenTotal,
 uint256 tokensDiscountPoly,
 uint256 mintedTotal,
 mapping(uint8 => uint256) minted,
 uint256 mintedDiscountPoly
}
```

## Contract Members

**Constants & Variables**

```javascript
//internal members
bytes32 internal constant INVESTORSKEY;
mapping(bytes32 => mapping(bytes32 => string)) internal oracleKeys;
contract IERC20[] internal usdTokens;
mapping(address => bool) internal usdTokenEnabled;
mapping(bytes32 => mapping(bytes32 => address)) internal customOracles;

//public members
mapping(address => uint256) public nonAccreditedLimitUSDOverride;
bool public allowBeneficialInvestments;
bool public isFinalized;
address public treasuryWallet;
uint256 public currentTier;
uint256 public fundsRaisedUSD;
mapping(address => uint256) public stableCoinsRaised;
mapping(address => uint256) public investorInvestedUSD;
mapping(address => mapping(uint8 => uint256)) public investorInvested;
uint256 public nonAccreditedLimitUSD;
uint256 public minimumInvestmentUSD;
uint256 public finalAmountReturned;
struct USDTieredSTOStorage.Tier[] public tiers;
```

## Functions

