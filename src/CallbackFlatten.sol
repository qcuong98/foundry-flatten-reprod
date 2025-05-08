// SPDX-License-Identifier: UNLICENSED

// src/interface/ICallback.sol

pragma solidity ^0.8.0;

interface ICallback {
    function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata path) external;
}

// src/callback/Callback.sol

pragma solidity 0.8.28;

import {ICallback} from "../interface/ICallback.sol";

contract Callback is ICallback {
    function swapCallback(int256 amountToPay, int256 amountOut, bytes calldata) external pure {
        require(amountToPay != 0 && amountOut != 0, "In or Out Amount is Zero");
    }
}
