// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract Bank {
    // uint _balance;
    mapping(address => uint) _balance;

    function deposit(uint amount) public {
        // _balance += amount;
        _balance[msg.sender] += amount;
    }

    function withdraw(uint amount) public {
        // _balance -= amount;
        _balance[msg.sender] -= amount;
    }

    function checkBalance() public view returns (uint balance){
        return _balance[msg.sender];
    }

}