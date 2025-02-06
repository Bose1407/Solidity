// SPDX-License-Identifier: MIT
pragma solidity >0.8.0<0.9.0;

contract Owner{
    address public owner;
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(owner == msg.sender);
        _;
    }

    modifier  costs(uint price){
        if(msg.value>price){
            _;
        }
    }

}

contract Register is Owner {
   mapping (address => bool) public  registeredAddresses;
   mapping (address => uint) public maintain_transact;
   uint price;
   constructor(uint initialPrice) { price = initialPrice; }
   
   function register() public payable costs(price) {
      registeredAddresses[msg.sender] = true;
      maintain_transact[msg.sender] = msg.value;
   }
   function changePrice(uint _price) public onlyOwner {
      price = _price;
   }
}