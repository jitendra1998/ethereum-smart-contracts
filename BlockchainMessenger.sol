// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract BlockChainMessanger {
    
    string public message;

    uint public messageUpdateCounter;

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function updateMessage(string memory updatedMessage) public {
        if(owner == msg.sender) {
            message = updatedMessage;
            messageUpdateCounter += 1;
        }
    }
}