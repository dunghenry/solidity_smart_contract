//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Coin {
    address public minter;
    mapping(address => uint256) public balances;

    event sent(address from, address to, uint256 amount);

    constructor() {
        minter = msg.sender;
    }

    modifier onlyMinter() {
        require(msg.sender == minter);
        _;
    }

    modifier checkAmount(uint256 amount) {
        require(amount < 1e60);
        _;
    }
    modifier checkBalance(uint256 amount) {
        require(amount < balances[msg.sender], "So tien cua ban khong du");
        _;
    }

    function mint(address receiver, uint256 amount)
        public
        onlyMinter
        checkAmount(amount)
    {
        balances[receiver] += amount;
    }

    function send(address receiver, uint256 amount)
        public
        checkBalance(amount)
    {
        balances[receiver] += amount;
        balances[msg.sender] -= amount;
        emit sent(msg.sender, receiver, amount);
    }
}
