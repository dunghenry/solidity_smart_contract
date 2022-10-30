//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract HandlingError {
    //throw, assert, revert
    //require
    //modifier
    uint256 public a = 10;
    uint256 public b = 15;
    uint256 public c = 5;

    function demo() public {
        a = 5;
        require(a == 8, "a need to be 8");
    }

    modifier checkA() {
        require(a == 8, "a need to be 8");
        _;
    }
    modifier checkB() {
        require(b == 8, "b need to be 8");
        _;
    }

    modifier checkC(uint256 _value) {
        require(c == _value, "c need to be _value");
        _;
    }

    function getA() public view checkA checkB returns (uint256) {
        return a;
    }

    function getB(uint256 _value) public view checkC(_value) returns (uint256) {
        return c;
    }
}
