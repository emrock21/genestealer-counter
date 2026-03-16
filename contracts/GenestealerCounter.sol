// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

/// @title Genestealer Counter – pure text, no funds, no wallet interaction
/// @notice Counts Genestealer encounters. Each interaction increments the public counter.
/// @dev No payable functions, no selfdestruct, no external calls.

contract GenestealerCounter {

    /// @notice Public counter of detected Genestealers.
    uint256 public genestealerCount;

    /// @notice Emitted whenever someone reports a new Genestealer.
    event GenestealerReported(address indexed by, uint256 newTotal);

    constructor() {
        genestealerCount = 0;
    }

    /// @notice Increments the Genestealer counter by 1.
    /// @dev Anyone can call this; it only increments a number.
    function reportGenestealer() external {
        genestealerCount += 1;
        emit GenestealerReported(msg.sender, genestealerCount);
    }

    /// @notice Returns a descriptive message with the current count.
    function describe() external view returns (string memory) {
        return string(
            abi.encodePacked(
                "Total Genestealers detected: ",
                _uintToString(genestealerCount)
            )
        );
    }

    /// @dev Internal helper to convert uint to string.
    function _uintToString(uint256 value) internal pure returns (string memory) {
        if (value == 0) return "0";
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }
}
