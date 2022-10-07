// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract EnumExample{

    enum Status{
        Pending, Shipped, Accepted, Rejected, Canceled 
    }

    Status public myStatus; 

    function get() public view returns(myStatus){
        return myStatus; 
    }

    function set(Status _myStatus) public {
        myStatus = _myStatus; 
    }

    function cancel() public{
        status = Status.Canceled(); 
    }
    
}