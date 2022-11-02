//SPDX-License-Identifier:None
pragma solidity <0.9.0;

contract Game {
    struct Player {
        address addressPlayer;
        string fullName;
        uint256 age;
        string sex;
    }
    mapping(address => Player) public players;

    function addPlayer(
        address _address,
        string memory _fullName,
        uint256 _age,
        string memory _sex
    ) public {
        players[msg.sender] = Player(_address, _fullName, _age, _sex);
    }

    function getPlayer(address addr) public view returns (Player memory) {
        return players[addr];
    }
}
