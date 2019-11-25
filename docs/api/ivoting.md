---
id: version-3.0.0-IVoting
title: IVoting
original_id: IVoting
---

# IVoting.sol

View Source: [contracts/interfaces/IVoting.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/interfaces/IVoting.sol)

**↘ Derived Contracts:** [**VotingCheckpoint**](votingcheckpoint.md)

**IVoting**

## Functions

* [changeBallotStatus\(uint256 \_ballotId, bool \_isActive\)](ivoting.md#changeballotstatus)
* [getBallotResults\(uint256 \_ballotId\)](ivoting.md#getballotresults)
* [getSelectedProposal\(uint256 \_ballotId, address \_voter\)](ivoting.md#getselectedproposal)
* [getBallotDetails\(uint256 \_ballotId\)](ivoting.md#getballotdetails)

### changeBallotStatus

⤿ Overridden Implementation\(s\): [PLCRVotingCheckpoint.changeBallotStatus](plcrvotingcheckpoint.md#changeballotstatus),[WeightedVoteCheckpoint.changeBallotStatus](weightedvotecheckpoint.md#changeballotstatus)

Allows the token issuer to set the active stats of a ballot

```javascript
function changeBallotStatus(uint256 _ballotId, bool _isActive) external nonpayable
```

**Returns**

bool success

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_ballotId | uint256 | The index of the target ballot |
| \_isActive | bool | The bool value of the active stats of the ballot |

### getBallotResults

⤿ Overridden Implementation\(s\): [PLCRVotingCheckpoint.getBallotResults](plcrvotingcheckpoint.md#getballotresults),[WeightedVoteCheckpoint.getBallotResults](weightedvotecheckpoint.md#getballotresults)

Queries the result of a given ballot

```javascript
function getBallotResults(uint256 _ballotId) external view
returns(voteWeighting uint256[], tieWith uint256[], winningProposal uint256, isVotingSucceed bool, totalVoters uint256)
```

**Returns**

uint256 voteWeighting

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_ballotId | uint256 | Id of the target ballot |

### getSelectedProposal

⤿ Overridden Implementation\(s\): [PLCRVotingCheckpoint.getSelectedProposal](plcrvotingcheckpoint.md#getselectedproposal),[WeightedVoteCheckpoint.getSelectedProposal](weightedvotecheckpoint.md#getselectedproposal)

Get the voted proposal

```javascript
function getSelectedProposal(uint256 _ballotId, address _voter) external view
returns(proposalId uint256)
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_ballotId | uint256 | Id of the ballot |
| \_voter | address | Address of the voter |

### getBallotDetails

⤿ Overridden Implementation\(s\): [PLCRVotingCheckpoint.getBallotDetails](plcrvotingcheckpoint.md#getballotdetails),[WeightedVoteCheckpoint.getBallotDetails](weightedvotecheckpoint.md#getballotdetails)

Get the details of the ballot

```javascript
function getBallotDetails(uint256 _ballotId) external view
returns(quorum uint256, totalSupplyAtCheckpoint uint256, checkpointId uint256, startTime uint256, endTime uint256, totalProposals uint256, totalVoters uint256, isActive bool)
```

**Returns**

uint256 quorum

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_ballotId | uint256 | The index of the target ballot |

