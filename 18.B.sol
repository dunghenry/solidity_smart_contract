//SPDX-License-Identifier: None
pragma solidity <0.9.0;
import "./17.Inheritance.sol";

contract B is A {
    constructor(uint256 _value) A(_value) {
        b = _value;
    }

    uint256 public b = 6;

    function setB() public {
        b = 10;
    }
}
