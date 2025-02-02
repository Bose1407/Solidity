// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2;

contract PizzaShop{
    enum PizzaSize {SMALL,MEDIUM,LARGE}
    PizzaSize constant defaultSize = PizzaSize.MEDIUM;
    PizzaSize choice;

    function get_default_size() public pure returns(string memory){
        return "Medium";
    }

    function set_choice(string memory ch) public {
        if(keccak256(abi.encode(ch)) == keccak256(abi.encode("large"))){

            choice = PizzaSize.LARGE;

        }
        else if(keccak256(abi.encode(ch)) == keccak256(abi.encode("medium"))){

            choice = PizzaSize.MEDIUM;

        }
        else{
            choice=PizzaSize.SMALL;
        }
    }

    function get_choice () public view returns(string memory){
        uint res = uint(choice);
        if(res == 0){
            return "Small";
        }
        else if(res == 1){
            return "Medium";
        }
        else{
            return "Large";
        }
    } 

    
}