---
id: version-3.0.0-GeneralTransferManagerStorage
title: GeneralTransferManagerStorage
original_id: GeneralTransferManagerStorage
---

# Transfer Manager module for core transfer validation functionality \(GeneralTransferManagerStorage.so

View Source: [contracts/modules/TransferManager/GTM/GeneralTransferManagerStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/TransferManager/GTM/GeneralTransferManagerStorage.sol)

**↘ Derived Contracts:** [**GeneralTransferManager**](generaltransfermanager.md)**,** [**GeneralTransferManagerProxy**](generaltransfermanagerproxy.md)

**GeneralTransferManagerStorage**

**Enums**

### TransferType

```javascript
enum TransferType {
 GENERAL,
 ISSUANCE,
 REDEMPTION
}
```

## Structs

### Defaults

```javascript
struct Defaults {
 uint64 canSendAfter,
 uint64 canReceiveAfter
}
```

### TransferRequirements

```javascript
struct TransferRequirements {
 bool fromValidKYC,
 bool toValidKYC,
 bool fromRestricted,
 bool toRestricted
}
```

## Contract Members

**Constants & Variables**

```javascript
//public members
bytes32 public constant WHITELIST;
bytes32 public constant INVESTORSKEY;
bytes32 public constant INVESTORFLAGS;
address public issuanceAddress;
struct GeneralTransferManagerStorage.Defaults public defaults;
mapping(address => mapping(uint256 => bool)) public nonceMap;
mapping(uint8 => struct GeneralTransferManagerStorage.TransferRequirements) public transferRequirements;

//internal members
uint256 internal constant ONE;
```

## Functions

