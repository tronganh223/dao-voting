// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {

    struct Proposal {
        string description;
        uint voteCount;
    }

    Proposal[] public proposals;

    mapping(address => bool) public voted;

    function createProposal(string memory _description) public {
        proposals.push(Proposal(_description, 0));
    }

    function vote(uint proposalId) public {

        require(!voted[msg.sender], "Already voted");
        require(proposalId < proposals.length, "Invalid proposal");

        proposals[proposalId].voteCount += 1;
        voted[msg.sender] = true;
    }

    function getProposal(uint proposalId) public view returns (string memory, uint) {

        Proposal memory p = proposals[proposalId];
        return (p.description, p.voteCount);

    }
}
