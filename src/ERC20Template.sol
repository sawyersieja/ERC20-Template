// ERC20Template.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Template is ERC20 {
    constructor() ERC20("Coin Name", "Coin Abbreviation") {
        _mint(msg.sender, 150 ether);
    }
}
