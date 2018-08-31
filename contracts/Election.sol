pragma solidity ^0.4.24;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read/write Candidates
    mapping(uint => Candidate) public candidates;

    // Store Candidates Count
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1 Tom");
        addCandidate("Candidate 2 Jerry");
    }

    function addCandidate (string _name) private {
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
        candidatesCount++;
    }
}