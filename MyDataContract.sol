
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyDataContract {

    string public name;
    uint256 public age;
    bool public isDeveloper = true;
    address public owner;

    mapping(address => uint256) public balances;

    constructor() {
        name = "Alex";
        age = 25;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function setBalance(address _wallet, uint256 _amount) public onlyOwner {
        balances[_wallet] = _amount;
    }

    function updateName(string memory newName) public onlyOwner {
        name = newName;
    }

    function updateAge(uint256 newAge) public onlyOwner {
        age = newAge;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "Invalid address");
        owner = newOwner;
    }
}
