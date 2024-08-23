// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ResearchPublishing {

    // Structure to store research paper details
    struct Paper {
        string title;
        string author;
        string ipfsHash;
        uint timestamp;
    }

    // Mapping from a paper hash to its details
    mapping(bytes32 => Paper) public papers;

    // Event emitted when a new paper is published
    event PaperPublished(bytes32 indexed paperHash, string title, string author, string ipfsHash, uint timestamp);

    // Function to publish a research paper
    function publishPaper(string memory _title, string memory _author, string memory _ipfsHash) public {
        // Generate a unique hash for the paper using its details
        bytes32 paperHash = keccak256(abi.encodePacked(_title, _author, _ipfsHash, block.timestamp));

        // Ensure that the paper does not already exist
        require(papers[paperHash].timestamp == 0, "Paper already exists");

        // Store the paper details in the mapping
        papers[paperHash] = Paper(_title, _author, _ipfsHash, block.timestamp);

        // Emit an event to signal that the paper has been published
        emit PaperPublished(paperHash, _title, _author, _ipfsHash, block.timestamp);
    }

    // Function to retrieve a paper's details by its hash
    function getPaper(bytes32 _paperHash) public view returns (string memory, string memory, string memory, uint) {
        Paper memory paper = papers[_paperHash];
        require(paper.timestamp != 0, "Paper not found");
        return (paper.title, paper.author, paper.ipfsHash, paper.timestamp);
    }
}
