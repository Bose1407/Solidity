// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
import "@openzeppelin/contracts/utils/Strings.sol";
contract Sample {
    uint public reg;
    string public name;
    using Strings for uint256;
    constructor(uint _reg,string memory _name){
        reg = _reg;
        name = _name;
    }

    function funfromSample()public view returns (string memory){
        return string(abi.encodePacked("My name is ", name,"my register number is ",reg.toString()));
    }
}


contract Child is Sample{
    string public department;
    constructor(string memory _department,uint _reg,string memory _name) Sample(_reg,_name){
        department = _department;
    }

    
}

contract Base{
    Child obj = new Child("IT",8283,"Bose");

    function call_fun() public  view returns (string memory) {
        string memory res = obj.funfromSample();

        return  res;
    }
}