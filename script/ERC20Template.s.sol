// ERC20Template.s.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Template} from "../src/ERC20Template.sol";

contract ERC20TemplateScript is Script {
    ERC20Template public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new ERC20Template();

        vm.stopBroadcast();
    }
}
