// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Metacrafters is ERC20, Ownable {
    constructor() ERC20("Metacrafters Token", "MTC") {}

    function mintToken(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burnToken(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

 
   
}
