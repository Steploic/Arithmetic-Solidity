// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Arithmetic {
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        // your code here
        return a + b;
    }

    uint256 public constant PERCENTAGE_INTEREST = 3;

    /**
     * The calculate interest function is buggy because of how it calculates interest of amount passed into it
     * Make it return the right value.
     */

    function calculateInterest(uint256 amount) public pure returns (uint256) {
        uint256 x = PERCENTAGE_INTEREST * 100 * amount / 10000;
        return x;
    }

    /*
        This exercise assumes you know how exponent works.
        1. Function `getResult` should return the result of the exponent.
    */
    function getResult(uint256 _base, uint256 _e) public pure returns (uint256) {
        // your code here
        uint256 exposant = _base ** _e;
        return exposant;
    }

    /*
        This exercise assumes you understand what unchecked keyword is.
        1. The `getNumber` function reverts when called, you need to make the function stop
           reverting and return underflow value.
    */

    function getNumber(uint256 x) public pure returns (uint256) {
        unchecked {
            return x - 100;
        }
        
    }
}
