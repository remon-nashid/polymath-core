---
id: version-3.0.0-WeightedVoteCheckpointProxy
title: WeightedVoteCheckpointProxy
original_id: WeightedVoteCheckpointProxy
---

# Voting module for governance \(WeightedVoteCheckpointProxy.sol\)

View Source: [contracts/modules/Checkpoint/Voting/Transparent/WeightedVoteCheckpointProxy.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Checkpoint/Voting/Transparent/WeightedVoteCheckpointProxy.sol)

**↗ Extends:** [**WeightedVoteCheckpointStorage**](weightedvotecheckpointstorage.md)**,** [**VotingCheckpointStorage**](votingcheckpointstorage.md)**,** [**ModuleStorage**](modulestorage.md)**,** [**Pausable**](pausable.md)**,** [**OwnedUpgradeabilityProxy**](ownedupgradeabilityproxy.md)

**WeightedVoteCheckpointProxy**

## Functions

* [\(string \_version, address \_securityToken, address \_polyAddress, address \_implementation\)](weightedvotecheckpointproxy.md)

Constructor

```javascript
function (string _version, address _securityToken, address _polyAddress, address _implementation) public nonpayable ModuleStorage
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_version | string |  |
| \_securityToken | address | Address of the security token |
| \_polyAddress | address | Address of the polytoken |
| \_implementation | address | representing the address of the new implementation to be set |

