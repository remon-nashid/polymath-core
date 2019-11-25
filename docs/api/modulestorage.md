---
id: version-3.0.0-ModuleStorage
title: ModuleStorage
original_id: ModuleStorage
---

# Storage for Module contract \(ModuleStorage.sol\)

View Source: [contracts/storage/modules/ModuleStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/storage/modules/ModuleStorage.sol)

**↘ Derived Contracts:** [**BlacklistTransferManagerProxy**](blacklisttransfermanagerproxy.md)**,** [**CappedSTOProxy**](cappedstoproxy.md)**,** [**CountTransferManagerProxy**](counttransfermanagerproxy.md)**,** [**DummySTOProxy**](dummystoproxy.md)**,** [**ERC20DividendCheckpointProxy**](erc20dividendcheckpointproxy.md)**,** [**EtherDividendCheckpointProxy**](etherdividendcheckpointproxy.md)**,** [**GeneralPermissionManagerProxy**](generalpermissionmanagerproxy.md)**,** [**GeneralTransferManagerProxy**](generaltransfermanagerproxy.md)**,** [**LockUpTransferManagerProxy**](lockuptransfermanagerproxy.md)**,** [**ManualApprovalTransferManagerProxy**](manualapprovaltransfermanagerproxy.md)**,** [**Module**](module.md)**,** [**PercentageTransferManagerProxy**](percentagetransfermanagerproxy.md)**,** [**PLCRVotingCheckpointProxy**](plcrvotingcheckpointproxy.md)**,** [**PreSaleSTOProxy**](presalestoproxy.md)**,** [**USDTieredSTOProxy**](usdtieredstoproxy.md)**,** [**VestingEscrowWalletProxy**](vestingescrowwalletproxy.md)**,** [**VolumeRestrictionTMProxy**](volumerestrictiontmproxy.md)**,** [**WeightedVoteCheckpointProxy**](weightedvotecheckpointproxy.md)

**ModuleStorage**

Contract is abstract

## Contract Members

**Constants & Variables**

```javascript
//public members
address public factory;
contract ISecurityToken public securityToken;
bytes32 public constant ADMIN;
bytes32 public constant OPERATOR;
contract IERC20 public polyToken;

//internal members
bytes32 internal constant TREASURY;
```

## Functions

* [\(address \_securityToken, address \_polyAddress\)](modulestorage.md)

Constructor

```javascript
function (address _securityToken, address _polyAddress) public nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_securityToken | address | Address of the security token |
| \_polyAddress | address | Address of the polytoken |

