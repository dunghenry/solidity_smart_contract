//SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract Control_Structure {
    bool isValid = true;

    function checkValid() public view returns (string memory) {
        if (isValid == true) {
            // ||, &&
            return "TRUE";
        } else {
            return "FALSE";
        }
    }

    function forloop() public pure {
        // for
        for (uint256 i = 0; i <= 10; i++) {}
    }

    function whileloop() public pure {
        bool isOk = true;
        while(isOk){
            if(isOk){
                isOk = false;
            }
            //do something
            // continue or break
        }
    }
}
