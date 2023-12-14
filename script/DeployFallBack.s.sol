// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {FallBack} from "../src/FallBack.sol";

contract DeployFallBack is Script {
    function run() public {
        vm.broadcast();
        FallBack fallBackContract = new FallBack();
    }
}
