//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Mapping {
    mapping(address => uint256) balances;

    mapping(address => mapping(address => bool)) approved;

    address public minter;

    constructor() {
        minter = msg.sender;
    }

    function demo() public {
        //add and update
        balances[msg.sender] = 100;
        balances[msg.sender] = 200;

        //delete
        delete balances[msg.sender];

        //default value
        //balances[keyNotExits]; //=> 0;

        // nested mapping
        //approved[msg.sender][spender]; // true or false
    }

    function get() public view returns (address) {
        return minter;
    }
}
