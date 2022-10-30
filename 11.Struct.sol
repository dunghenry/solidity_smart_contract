//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Struct {
    struct Player {
        uint256 ID;
        address addr;
        string name;
    }
    Player public player;

    //Array
    Player[] public players;

    //Mapping
    mapping(address => Player) listPlayers;

    constructor() {
        player = Player(1, msg.sender, "TranDung");

        // player.ID = 2;  //update
        // delete player; //delete player

        listPlayers[msg.sender] = player;
        players.push(player);
        //or
        // players.push(Player(3, msg.sender, "DungHenry"));
        //or
        // players.push(Player({ID: 4, addr: msg.sender, name: "Quach Dung"});
    }

    function get() public view returns (Player memory) {
        return player;
    }

    function getName() public view returns (string memory) {
        return player.name;
    }

    function getPlayers() public view returns (Player[] memory) {
        return players;
    }

    function getListPlayers() public view returns (Player memory) {
        return listPlayers[msg.sender];
    }
}
