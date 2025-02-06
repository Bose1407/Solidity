// SPDX-License-Identifier: MIT
pragma solidity >0.8.0;



contract EventExample {
    // Declare an event
    event NewRegistration(address indexed user, uint amount);

    function register() public payable {
        // Emit the event
        emit NewRegistration(msg.sender, msg.value);
    }
}
