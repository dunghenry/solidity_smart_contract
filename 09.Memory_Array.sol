// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Memory_Array {
    // Storage array
    //uint256[3] numbers;

    function memory_array() public pure returns (uint256[] memory) {
        uint256[] memory numbers = new uint256[](10);

        // add item
        numbers[0] = 1;
        numbers[1] = 2;
        numbers[3] = 10;

        // update item
        numbers[0] = 100;

        // delete item
        delete numbers[3];

        return numbers;
    }

    // public, internal -> memory
    // external -> calldata
    function array(uint256[] memory myArr) external pure returns(uint256[] memory) {
        return myArr;
    }
}
