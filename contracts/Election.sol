pragma solidity ^0.4.24;

contract Election {
    // model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    mapping(uint => Candidate) public candidates; // read/write candidates
    mapping(address => bool) public voters; // store accounts that have voted
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1 Tom");
        addCandidate("Candidate 2 Jerry");
    }

    function addCandidate (string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId)  public {
        require(!voters[msg.sender]); // require that they haven't voted before
        require(_candidateId > 0 && _candidateId <= candidatesCount); // require a valid candiate

        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
    }
}