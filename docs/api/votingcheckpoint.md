---
id: version-3.0.0-VotingCheckpoint
title: VotingCheckpoint
original_id: VotingCheckpoint
---

# VotingCheckpoint.sol

View Source: [contracts/modules/Checkpoint/Voting/VotingCheckpoint.sol](https://github.com/remon-nashid/polymath-core/tree/0c5593835be9dcec69d8de5b12eb17bc7cd77adc/contracts/modules/Checkpoint/Voting/VotingCheckpoint.sol)

**↗ Extends:** [**VotingCheckpointStorage**](votingcheckpointstorage.md)**,** [**ICheckpoint**](icheckpoint.md)**,** [**IVoting**](ivoting.md)**,** [**Module**](module.md) **↘ Derived Contracts:** [**PLCRVotingCheckpoint**](plcrvotingcheckpoint.md)**,** [**WeightedVoteCheckpoint**](weightedvotecheckpoint.md)

**VotingCheckpoint**

**Events**

```javascript
event ChangedDefaultExemptedVotersList(address indexed _voter, bool  _exempt);
```

## Functions

* [changeDefaultExemptedVotersList\(address \_voter, bool \_exempt\)](votingcheckpoint.md#changedefaultexemptedvoterslist)
* [changeDefaultExemptedVotersListMulti\(address\[\] \_voters, bool\[\] \_exempts\)](votingcheckpoint.md#changedefaultexemptedvoterslistmulti)
* [\_changeDefaultExemptedVotersList\(address \_voter, bool \_exempt\)](votingcheckpoint.md#_changedefaultexemptedvoterslist)
* [getDefaultExemptionVotersList\(\)](votingcheckpoint.md#getdefaultexemptionvoterslist)

### changeDefaultExemptedVotersList

```javascript
function changeDefaultExemptedVotersList(address _voter, bool _exempt) external nonpayable withPerm
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_voter | address | Address of the voter |
| \_exempt | bool | Whether it is exempted or not |

### changeDefaultExemptedVotersListMulti

```javascript
function changeDefaultExemptedVotersListMulti(address[] _voters, bool[] _exempts) external nonpayable withPerm
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_voters | address\[\] | Address of the voter |
| \_exempts | bool\[\] | Whether it is exempted or not |

### \_changeDefaultExemptedVotersList

```javascript
function _changeDefaultExemptedVotersList(address _voter, bool _exempt) internal nonpayable
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |
| \_voter | address |  |
| \_exempt | bool |  |

### getDefaultExemptionVotersList

```javascript
function getDefaultExemptionVotersList() external view
returns(address[])
```

**Arguments**

| Name | Type | Description |
| :--- | :--- | :--- |


