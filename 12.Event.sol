//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Event {
    event deposit(address from, uint256 mount);

    function demo(uint256 mount) public {
        emit deposit(msg.sender, mount);
    }
}
