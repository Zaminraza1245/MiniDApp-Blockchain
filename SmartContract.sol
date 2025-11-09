// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title MiniDapp - simple read/write contract for a web frontend demo
/// @notice Stores a message and a number; lets users update and read them
contract MiniDapp {
    string private message;
    uint256 private number;
    address public owner;

    event MessageChanged(address indexed by, string newMessage);
    event NumberChanged(address indexed by, uint256 newNumber);

    constructor(string memory _message, uint256 _number) {
        owner = msg.sender;
        message = _message;
        number = _number;
    }

    /// @notice Read the current message
    function getMessage() external view returns (string memory) {
        return message;
    }

    /// @notice Read the current number
    function getNumber() external view returns (uint256) {
        return number;
    }

    /// @notice Update the message (anyone can call for demo purposes)
    function setMessage(string calldata _message) external {
        message = _message;
        emit MessageChanged(msg.sender, _message);
    }

    /// @notice Set the number (anyone can call for demo purposes)
    function setNumber(uint256 _number) external {
        number = _number;
        emit NumberChanged(msg.sender, _number);
    }

    /// @notice Increment the stored number by 1
    function increment() external {
        number += 1;
        emit NumberChanged(msg.sender, number);
    }
}
