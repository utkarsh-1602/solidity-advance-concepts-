// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract NestedMappingExample{
    mapping(address => mapping(uint => bool)) public myNestedMap; 

    function get(address _addr, uint _i) public view returns(bool){
        return myNestedMap[_addr][_i]; 
    }

    function set(address _addr1, uint _i, bool _boo) public {
        myNestedMap[_addr1][_i] = _boo; 
    }

    function remove(address _addr, uint _i) public {
        delete myNestedMap[_addr][_i]; 
    }
}