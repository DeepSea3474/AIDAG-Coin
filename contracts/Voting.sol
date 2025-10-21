// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string description;
        uint voteCount;
    }

    Proposal[] public proposals;
    mapping(address => bool) public hasVoted;
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Proposal {
        string description;
        uint voteCount;
    }

    Proposal[] public proposals;
    mapping(address => bool) public hasVoted;

    function createProposal(string memory _description) public {
        proposals.push(Proposal({description: _description, voteCount: 0}));
    }

    function vote(uint proposalIndex) public {
        require(!hasVoted[msg.sender], "Already voted");
        require(proposalIndex < proposals.length, "Invalid proposal");

        proposals[proposalIndex].voteCount += 1;
        hasVoted[msg.sender] = true;
    }

    function getProposal(uint index) public view returns (string memory, uint) {
        Proposal memory p = proposals[index];
        return (p.description, p.voteCount);
    }
}

