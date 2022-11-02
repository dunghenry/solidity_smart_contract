//SPDX-License-Identifier:None
pragma solidity <0.9.0;

contract Game {
    struct Player {
        string fullName;
        uint256 age;
        string sex;
    }
    Player[] public players;

    function addPlayer(
        string memory _fullName,
        uint256 _age,
        string memory _sex
    ) public {
        players.push(Player(_fullName, _age, _sex));
    }

    function getLength() public view returns (uint256) {
        return players.length;
    }

    function getPlayer(uint256 index) public view returns (Player memory) {
        return players[index];
    }
}
