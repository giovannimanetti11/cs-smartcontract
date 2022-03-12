// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Coinsinergy {

    address[] public funders;
    
    receive() external payable {}
    function addFunds() external payable {
        funders.push(msg.sender);
    }
}

// const instance = await Coinsinergy.deployed()
