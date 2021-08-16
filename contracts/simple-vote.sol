// contracts/simple_vote.sol
// SPDX-License-Identifier: GPL-3.0

//Todo:
//store voter address
//assign voter address
//modify vote function that each address can vote only one time
pragma solidity ^0.8.0;

contract Voting{
    string[] public candidateList;
    mapping (string => uint256) candidateVotes;
    
    //Visibility (public / external) is not needed for constructors anymore
    //https://docs.soliditylang.org/en/v0.7.5/070-breaking-changes.html#functions-and-events
    constructor(string[] memory candidateNames) {//public {
        candidateList = candidateNames;
    }
    
    function voteCandidate(string memory candidate) public {
        //if vs require
        candidateVotes[candidate] += 1;
    }
    
    function totalCandidateVotes(string memory candidate) public view returns(uint256){
        return candidateVotes[candidate];
    }
    
    function totalCandidate() public view returns(uint256){
        return candidateList.length;
    }
}
