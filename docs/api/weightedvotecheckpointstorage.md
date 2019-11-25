---
id: version-3.0.0-WeightedVoteCheckpointStorage
title: WeightedVoteCheckpointStorage
original_id: WeightedVoteCheckpointStorage
---

# WeightedVoteCheckpointStorage.sol

View Source: [contracts/modules/Checkpoint/Voting/Transparent/WeightedVoteCheckpointStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Checkpoint/Voting/Transparent/WeightedVoteCheckpointStorage.sol)

**↘ Derived Contracts:** [**WeightedVoteCheckpoint**](weightedvotecheckpoint.md)**,** [**WeightedVoteCheckpointProxy**](weightedvotecheckpointproxy.md)

**WeightedVoteCheckpointStorage**

## Structs

### Ballot

```javascript
struct Ballot {
 uint256 checkpointId,
 uint256 quorum,
 uint64 startTime,
 uint64 endTime,
 uint64 totalProposals,
 uint56 totalVoters,
 bool isActive,
 mapping(uint256 => uint256) proposalToVotes,
 mapping(address => uint256) investorToProposal,
 mapping(address => bool) exemptedVoters
}
```

## Contract Members

**Constants & Variables**

```javascript
struct WeightedVoteCheckpointStorage.Ballot[] internal ballots;
```

## Functions

