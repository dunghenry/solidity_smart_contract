// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract SendETH {
    //smart contract send eth
    function sendETH(address payable to, uint256 amount) public {
        to.transfer(amount);
    }

    function buySth() public payable {
        //msg.value; // check value
        //address(this.address).balances; //check balance
    }

    //smart contract receive eth
    receive() external payable {}
}
