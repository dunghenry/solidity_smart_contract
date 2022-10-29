//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Function {
    uint256 value;

    // function Function(){} 0.4.4

    constructor(uint256 x) {
        value = x;
    }

    function setValue(uint256 _value) external {
        value = _value;
    }

    function getValue() external view returns (uint256) {
        return value;
    }

    function set(uint256 _value) public {
        value = _value;
    }

    function get() public view returns (uint256) {
        return value;
    }

    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}
