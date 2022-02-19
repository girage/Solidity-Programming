// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

import "github.com/OpenZeppelin/openzeppelin-contracts/contracts/utils/math/SafeMath.sol";

contract Bank {
    using SafeMath for uint;

    uint _balance;

    function deposit(uint amount) public {
        _balance += amount;
    }

    function withdraw(uint amount) public {
        // require(amount <= _balance, "amount is not enough");
        // _balance = _balance.sub(amount); // example import method
        _balance -= amount; // at version 0.8.12 handle math problem
    }

    function checkBalance() public view returns (uint balance){
        return _balance;
    }

}