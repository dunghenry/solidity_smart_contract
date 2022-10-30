//SPDX-License-Identifier: None

pragma solidity <0.9.0;
import "./20.A.sol";

contract B {
    address addr;

    function setAddr(address _addr) public {
        addr = _addr;
    }

    function callSetA() public {
        // A a = A(addr);
        IA a = IA(addr);
        a.setA();
    }
}
