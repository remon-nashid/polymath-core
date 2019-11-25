---
id: version-3.0.0-SecurityTokenProxy
title: SecurityTokenProxy
original_id: SecurityTokenProxy
---

# USDTiered STO module Proxy \(SecurityTokenProxy.sol\)

View Source: [contracts/tokens/SecurityTokenProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/tokens/SecurityTokenProxy.sol)

**↗ Extends:** [**OZStorage**](ozstorage.md)**,** [**SecurityTokenStorage**](securitytokenstorage.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**SecurityTokenProxy**

## Functions

* [\(string \_name, string \_symbol, uint8 \_decimals, uint256 \_granularity, string \_tokenDetails, address \_polymathRegistry\)](securitytokenproxy.md)

constructor

```javascript
function (string _name, string _symbol, uint8 _decimals, uint256 _granularity, string _tokenDetails, address _polymathRegistry) public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_name | string | Name of the SecurityToken |
| \_symbol | string | Symbol of the Token |
| \_decimals | uint8 | Decimals for the securityToken |
| \_granularity | uint256 | granular level of the token |
| \_tokenDetails | string | Details of the token that are stored off-chain |
| \_polymathRegistry | address | Contract address of the polymath registry |

