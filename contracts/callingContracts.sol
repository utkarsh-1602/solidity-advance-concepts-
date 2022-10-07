// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

interface MinimalERC20{ 
    function balanceOf(address account) external view returns (uint256);
}

contract MyContract{
    MinimalERC20 externalContract;

    constructor (address _externalContract) {
        externalContract = MinimalERC20(_externalContract); 
    }

    function mustHaveSomeBalance() public {
        uint balance = externalContract.balanceOf(msg.sender); 
        require(balance > 0, "You don't own any tokens of External Contracts"); 
    }
}