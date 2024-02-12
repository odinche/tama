// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {Tama} from "../src/Tama.sol";
import {BaseScript} from "./Base.s.sol";

/**
 * @dev See the Solidity Scripting tutorial:
 * https://book.getfoundry.sh/tutorials/solidity-scripting
 */
contract TamaScript is BaseScript {
    function run() public broadcaster returns (Tama tama) {
        tama = new Tama();
    }
}
