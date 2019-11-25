---
id: version-3.0.0-ReclaimTokens
title: ReclaimTokens
original_id: ReclaimTokens
---

# Utility contract to allow owner to retreive any ERC20 sent to the contract \(ReclaimTokens.sol\)

View Source: [contracts/ReclaimTokens.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/ReclaimTokens.sol)

**↗ Extends:** [**Ownable**](ownable.md) **↘ Derived Contracts:** [**FeatureRegistry**](featureregistry.md)**,** [**PolymathRegistry**](polymathregistry.md)

**ReclaimTokens**

## Functions

* [reclaimERC20\(address \_tokenContract\)](reclaimtokens.md#reclaimerc20)

### reclaimERC20

Reclaim all ERC20Basic compatible tokens

```javascript
function reclaimERC20(address _tokenContract) external nonpayable onlyOwner
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_tokenContract | address | The address of the token contract |

