//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;
contract Coin {
    address public minter;
    mapping(address => uint256) public balances;

    event sent(address from , address to, uint256 amount);
    constructor(){
        minter = msg.sender;
    }
    function mint(address receiver, uint256 amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);
        balances[receiver] += amount;
    }
    function send(address receiver, uint256 amount) public {
        require(amount < balances[msg.sender], "So tien cua ban khong du");
        balances[receiver] += amount;
        balances[msg.sender] -= amount;
        emit sent(msg.sender, receiver, amount);
    }
}