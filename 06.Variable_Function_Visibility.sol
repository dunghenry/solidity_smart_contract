//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Variable_Function_Visibility {
    uint256 value; //default private variable

    //variable public auto create function get
    //private: call inside contract
    //internal: call inside or contract inheritance
    //external: call outside
    //public
    constructor() {
        value = 10;
    }

    function get() private view returns (uint256) {
        return value;
    }

    function set(uint256 _value) public {
        _value = get();
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}
