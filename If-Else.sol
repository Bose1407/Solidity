// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2;

contract IfElseEx{
    int public age = 18;

    function check_age() public view returns(string memory){
        if (age>18) {
            return "Eligible To Vote";
        }
        else if(age == 18){
            return "From this year you re eligible";
        }
         else {
            return "Not Eligible to Vote";
        }
    }
}