//SPDX-License-Identifier: None
pragma solidity <0.9.0;

contract A {
    uint256 public a = 10;

    function setA() public {
        a = 5;
    }
}

contract B {
    address addr;

    function setAddr(address _addr) public {
        addr = _addr;
    }

    function callSetA() public {
        A a = A(addr);
        a.setA();
    }
}
