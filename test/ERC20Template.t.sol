// ERC20Template.t.sol
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ERC20Template} from "../src/ERC20Template.sol";

contract ERC20TemplateTest is Test {
    ERC20Template public token;

    address public deployer;
    address public user1;
    address public user2;

    uint256 constant INITIAL_SUPPLY = 150 ether;

    function setUp() public {
        deployer = address(this);
        user1 = address(1);
        user2 = address(2);

        token = new ERC20Template();
    }
}
