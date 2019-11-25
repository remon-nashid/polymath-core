---
id: version-3.0.0-Address
title: Address
original_id: Address
---

# Address.sol

View Source: [openzeppelin-solidity/contracts/utils/Address.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/openzeppelin-solidity/contracts/utils/Address.sol)

**Address**

## Functions

* [isContract\(address account\)](address.md#iscontract)

### isContract

This function will return false if invoked during the constructor of a contract, as the code is not actually created until after the constructor finishes.

```javascript
function isContract(address account) internal view
returns(bool)
```

**Returns**

whether the target address is a contract

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| account | address | address of the account to check |

