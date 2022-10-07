// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract ReceivingEther{

    receive() external payable() {

    }

    fallback() external payable(){

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    contract SendEther{
        function SendEther(address payable _to) public payable{
            uint amountToSend = msg.value; 
            (bool success, bytes memory data) = _to.call{value: msg.value}(" "); 
            require(success == true, "Failed to send ETH"); 
        }
    }

}