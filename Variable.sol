

// SPDX-License-Identifier: MIT
pragma solidity >=0.5;

contract C {
   uint public data = 30;
   uint public iData= 10;
   uint storedData = 300;
   
   function x() public returns (uint) {
      data = 3;
      return data;
   }
   function x_getter() public view returns (uint){
    return data;
   }
}
contract Caller {
   C c = new C();
   function f() public view returns (uint) {
      return c.data(); //external access
   }
}
contract D is C {
   function y() public view returns (uint) {

      return iData;
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return storedData; //access the state variable
   }
}