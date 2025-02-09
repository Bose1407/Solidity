// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Something_Abstract{
    function sayHello()public virtual returns (string memory);
}


contract Child is Something_Abstract{
    function sayHello() public pure override  returns (string memory){
        return "Hello From Child Contract";
    }

}