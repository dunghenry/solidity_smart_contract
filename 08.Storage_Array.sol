//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Storage_Array {
    //storage array
    // memory array
    // array as parameter
    uint256[] public numbers;
    uint256[] public rs;

    function addItem(uint256 _value) public {
        numbers.push(_value);
    }

    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    function getItem(uint256 index) public view returns (uint256) {
        return numbers[index];
    }

    function updateItem(uint256 _value, uint256 index) public {
        numbers[index] = _value;
    }

    // Note: delete numbers[0] - reset value default = 0
    //Ex: uint256[] nums = [1, 2, 3]; delete numbers[0] -> [0, 2, 3];

    function deleteItem(uint256 index) public {
        delete numbers[index];
    }

    function check(uint256 _value) public pure returns (bool) {
        if (_value % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function soChan() public returns (uint256[] memory) {
        for (uint256 i = 0; i < numbers.length; i++) {
            if (check(numbers[i])) {
                rs.push(numbers[i]);
            }
        }
        return rs;
    }

    function getSc() external view returns (uint256[] memory) {
        return rs;
    }
}
