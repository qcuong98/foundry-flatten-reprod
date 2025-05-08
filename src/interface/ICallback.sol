// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ICallback {
    function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata path) external;
}
