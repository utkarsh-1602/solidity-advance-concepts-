// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract A {
    function foo() public pure virtual returns(string memory){
        return "A";
    }
}

contract B is A{
    function foo() public pure virtual override returns(string memory){
        return "B"; 
    }
}

contract C is A{
    function foo() public pure virtual override returns(string memory){
        return "C";
    }
}

contract D is B,C{
    function foo() public pure override(B,C) returns (string memory){
        return super.foo(); 
        // D.foo() returns "C"
    // since C is the right-most parent with function foo();
    // override (B,C) means we want to override a method that exists in two parents
        // super is a special keyword that is used to call functions
        // in the parent contract
    }
}

contract E is C,B{
    function foo() public pure override (C,B) returns (string memory){
        return super.foo(); 
    }
}