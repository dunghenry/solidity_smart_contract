//SPDX-License-Identifier: None

pragma solidity <0.9.0;

interface IA {
    function setA() external;
}

contract A {
    uint256 public a = 20;

    function setA() external {
        a = 15;
    }
}
