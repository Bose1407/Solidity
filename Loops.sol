// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2;

contract Loops {
    function whileLoop() public pure returns (uint[] memory) {
        uint num = 5;
        uint[] memory results = new uint[](num);
        
        uint i = 0;
        while (num > 0) {
            results[i] = num; // Store the current value
            num--;
            i++;
        }
        
        return results; // Return the array of numbers
    }
}


contract ForLoop{
    int[]arr = new int[](5);
    function Numberfn() public{

        for(uint i=0;i<5;i++){
            arr[i] = int(i);
        }




    }
    function getter () public view returns (int[]memory){
        return  arr;
    }
}
