// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StepUpToken {

    address owner;
    uint totalNumofToken;
    string name = "StepUpToken";
    string symbol = "SU";
    
    
    mapping(address=>uint) balances;

    constructor(uint _total) {
        totalNumofToken = _total;
        balances[msg.sender] = _total;
    }

    function getBalance(address someone) public view returns (uint) {
        return balances[someone];
    }

    function transfer(address receiver, uint tokens) public {
        require(balances[msg.sender] >= tokens,"Not enough tokens");

        balances[msg.sender] = balances[msg.sender] - tokens;
        balances[receiver] = balances[receiver] + tokens;

    }

    //burn -> 0x00 / 
    //update-> totalNumofToken
   function Burn(uint tokens) public {

        require(balances[msg.sender] >= tokens,"Not enough tokens");

        balances[msg.sender] = balances[msg.sender] - tokens;        
        balances[0x0000000000000000000000000000000000000000] = balances[0x0000000000000000000000000000000000000000] + tokens;

    }
}