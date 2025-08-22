// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract BasicMath {
    function adder(uint256 _a, uint256 _b) external pure returns (uint256 sum, bool error) {
        unchecked {
            sum = _a + _b;
            if (sum < _a || sum < _b) {
                return (0, true);
            }
            return (sum, false);
        }
    }

    function subtractor(uint256 _a, uint256 _b) external pure returns (uint256 difference, bool error) {
        if (_b > _a) {
            return (0, true);
        }
        return (_a - _b, false);
    }
}