//SPDX-License-Identifier: None
pragma solidity >=0.4.16 <0.9.0;

contract HelloWorld {
    string public hello = "Hello World"; // define variable

    function get() public view returns (string memory) {
        return hello; //Get variable
    }
}
