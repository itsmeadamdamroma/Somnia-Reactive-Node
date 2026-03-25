// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

interface IReactivityService {
    function subscribe(uint256 eventId) external;
}

contract ReactiveDApp {
    address public owner;
    address public reactivityService = 0x0000000000000000000000000000000000000001; // Mock Somnia Service
    
    uint256 public reactionCount;
    event ReactionTriggered(address indexed sender, string payload);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyService() {
        require(msg.sender == reactivityService || msg.sender == owner, "Only the reactivity service can call this function");
        _;
    }

    // This simulates the Reactivity Service callback that triggers autonomously
    function executeCallback(string memory payload) external onlyService {
        reactionCount += 1;
        emit ReactionTriggered(msg.sender, payload);
    }
}
