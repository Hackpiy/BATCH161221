// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.1;

contract Multiplier{

    constructor(){

    }

    function multiply(uint256 _num1 , uint256 _num2) public pure returns(uint256){
        return (_num1*_num2);
    }

}

contract Subtrater{

    constructor(){

    }

    function subtract(uint256 _num1 , uint256 _num2) public pure returns(uint256){
        return (_num1-_num2);
    }

}

