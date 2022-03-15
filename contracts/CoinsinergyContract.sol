// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Coinsinergy {

    uint public numOfFounders;
    mapping(uint => address) public funders;
    
    receive() external payable {}
    
    function addFunds() external payable {
        uint index = numOfFounders++;
        funders[index] = msg.sender;
    }

}

// const instance = await Coinsinergy.deployed()
// instance.addFunds({value:"5500000000000000000", from: accounts[2]})