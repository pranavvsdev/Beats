// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Permit.sol";

contract Beats is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Beats", "BTS")
        Ownable(initialOwner)
        ERC20Permit("Beats")
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amt_to_burn) public override {
        _burn(msg.sender,amt_to_burn);
    }   
    function transfer(uint256 amt_to_transfer, address addr_to_transfer) public {
        _transfer(msg.sender, addr_to_transfer, amt_to_transfer);
    }    
}
