//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Operator {
    int256 a = 10;
    int256 b = 2;

    function tong() public view returns (int256) {
        int256 rs = a + b;
        return rs;
    }

    function hieu() public view returns (int256) {
        int256 rs = a - b;
        return rs;
    }

    function tich() public view returns (int256) {
        int256 rs = a * b;
        return rs;
    }

    function thuong() public view returns (int256) {
        int256 rs = a / b;
        return rs;
    }

    function chiaC() public pure returns (int256) {
        int256 c = 3;
        int256 d = 10;
        return c + d;
    }
}
