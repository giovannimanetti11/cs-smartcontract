// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Coinsinergy {

    address[] public funders;
    
    receive() external payable {}
    
    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function getAllFunders() external view returns (address[] memory) {
        return funders;
    }
}

// const instance = await Coinsinergy.deployed()
// instance.addFunds({value:"5500000000000000000", from: accounts[2]})