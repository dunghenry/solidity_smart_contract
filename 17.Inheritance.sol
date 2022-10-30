//SPDX-License-Identifier: None
pragma solidity <0.9.0;

contract A {
    uint256 public a = 10;

    constructor(uint256 _value) {
        a = _value;
    }

    function setA() public {
        a = 20;
    }
}
