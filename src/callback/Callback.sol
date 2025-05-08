// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {ICallback} from "../interface/ICallback.sol";

contract Callback is ICallback {
    function swapCallback(int256 amountToPay, int256 amountOut, bytes calldata) external pure {
        require(amountToPay != 0 && amountOut != 0, "In or Out Amount is Zero");
    }
}
