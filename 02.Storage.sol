// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorege {
    uint256 storedData; // State variable

    function set(uint256 x) public {
        storedData = x; // Set value
    }

    function get() public view returns (uint256) {
        return storedData; // Get value
    }
}
