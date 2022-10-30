//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Ex {
    uint256 public a = 10;
    address admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function demo() public view returns (uint256) {
        require(msg.sender == admin, "Only admin can call this function");
        return a;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call this function");
        _;
    }

    // loss of gas
    function getA() public onlyAdmin {
        a = 5;
    }
}
