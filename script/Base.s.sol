// SPDX-License-Identifier: MIT
// https://gist.github.com/PaulRBerg/9099825b7523acd8d5d0149f88f58de3
pragma solidity ^0.8.9;

import {Script} from "forge-std/Script.sol";
import {console2} from "forge-std/console2.sol";

abstract contract BaseScript is Script {
    /// @dev Included to enable compilation of the script without a $MNEMONIC environment variable.
    string internal constant ANVIL_MNEMONIC = "test test test test test test test test test test test junk";
    /// @dev Needed for the deterministic deployments.
    bytes32 internal constant ZERO_SALT = bytes32(0);

    /// @dev The address of the contract deployer.
    address internal deployer;

    /// @dev Used to derive the deployer's address.
    string internal mnemonic;

    constructor() {
        mnemonic = vm.envOr("TESTNET_MNEMONIC", ANVIL_MNEMONIC);
        console2.log(mnemonic);
        (deployer,) = deriveRememberKey({mnemonic: mnemonic, index: 0});
    }

    modifier broadcaster() {
        vm.startBroadcast(deployer);
        console2.log("msg.sender:", msg.sender, "deployer:", address(deployer));
        _;
        vm.stopBroadcast();
    }
}
