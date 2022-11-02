//SPDX-License-Identifier:None
pragma solidity <0.9.0;

contract Game {
    enum Level {
        Beginner,
        Intermediate,
        Advande
    }

    struct Player {
        address addressPlayer;
        string fullName;
        uint256 age;
        string sex;
        Level myLevel;
    }

    mapping(address => Player) public players;

    function addPlayer(
        address _address,
        string memory _fullName,
        uint256 _age,
        string memory _sex
    ) public {
        players[msg.sender] = Player(
            _address,
            _fullName,
            _age,
            _sex,
            Level.Beginner
        );
    }

    function getPlayer(address addr) public view returns (Player memory) {
        return players[addr];
    }

    function getPlayerLevel(address addr) public view returns (Level) {
        return players[addr].myLevel;
    }
}
