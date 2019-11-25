---
id: version-3.0.0-PLCRVotingCheckpointStorage
title: PLCRVotingCheckpointStorage
original_id: PLCRVotingCheckpointStorage
---

# PLCRVotingCheckpointStorage.sol

View Source: [contracts/modules/Checkpoint/Voting/PLCR/PLCRVotingCheckpointStorage.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Checkpoint/Voting/PLCR/PLCRVotingCheckpointStorage.sol)

**↘ Derived Contracts:** [**PLCRVotingCheckpoint**](plcrvotingcheckpoint.md)**,** [**PLCRVotingCheckpointProxy**](plcrvotingcheckpointproxy.md)

**PLCRVotingCheckpointStorage**

**Enums**

### Stage

```javascript
enum Stage {
 PREP,
 COMMIT,
 REVEAL,
 RESOLVED
}
```

## Structs

### Ballot

```javascript
struct Ballot {
 uint256 checkpointId,
 uint256 quorum,
 uint64 commitDuration,
 uint64 revealDuration,
 uint64 startTime,
 uint24 totalProposals,
 uint32 totalVoters,
 bool isActive,
 mapping(uint256 => uint256) proposalToVotes,
 mapping(address => struct PLCRVotingCheckpointStorage.Vote) investorToProposal,
 mapping(address => bool) exemptedVoters
}
```

### Vote

```javascript
struct Vote {
 uint256 voteOption,
 bytes32 secretVote
}
```

## Contract Members

**Constants & Variables**

```javascript
struct PLCRVotingCheckpointStorage.Ballot[] internal ballots;
```

## Functions

