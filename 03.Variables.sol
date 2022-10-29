// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract Variables {
    uint256 public data = 10;
    uint256 constant PI = 314;
    string public str;
    bool isLogin = false;
    bytes32 public st;
    uint256[] numbers = [1, 2, 3];
    mapping(string => string) public user; // object js

    //user define
    struct User {
        uint256 id;
        string name;
        bool isFriend;
    }

    //Color.red
    enum Color {
        red,
        green,
        blue,
        black
    }

    //Built in
    //! msg.sender;
    //? user function call
    //! msg.value;
    //? value function call

    User u;
    Color color;

    constructor() {
        str = "Hello, world";
        isLogin = true;
        st = "Hi";
        u = User(1, "Tran Van Dung", true);
        color = Color.black;
    }

    function setData(uint256 x) public {
        data = x;
    }

    function getData() public view returns (uint256) {
        return data;
    }

    function getPI() public pure returns (uint256) {
        return PI;
    }

    function setStr(string memory x) public {
        str = x;
    }

    function getStr() public view returns (string memory) {
        return str;
    }

    function getIsLogin() public view returns (bool) {
        return isLogin;
    }

    function setIsLogin(bool login) public {
        isLogin = login;
    }

    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    function setNameUser(string memory name) public {
        user["name"] = name;
    }

    function getNameUser() public view returns (string memory) {
        return user["name"];
    }

    function getUser(string memory name) public view returns (string memory) {
        return user[name];
    }

    function returnUser() public view returns (User memory) {
        return u;
    }

    function getColor() public view returns (Color) {
        return color;
    }
}
