// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Library {
    struct Book {
        uint id;
        string title;
    }

    mapping(uint => string) public addBooks;
    mapping(address => mapping(uint => string)) public addMyBooks;
    mapping(uint => bool) private bookExists;

    event BookAdded(uint indexed bookId, string title);
    event MyBookAdded(address indexed user, uint indexed bookId, string title);

    function add_books(uint _id, string memory _title) public {
        require(!bookExists[_id], "Book ID already exists");
        addBooks[_id] = _title;
        bookExists[_id] = true;
        emit BookAdded(_id, _title);
    }

    function add_my_books(uint _id, string memory _title) public {
        addMyBooks[msg.sender][_id] = _title;
        emit MyBookAdded(msg.sender, _id, _title);
    }

    function get_my_book(uint _id) public view returns (string memory) {
        return addMyBooks[msg.sender][_id];
    }
}
