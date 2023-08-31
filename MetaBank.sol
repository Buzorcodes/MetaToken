// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Metacrafters is ERC20 {
    address public owner;

    constructor() ERC20("Metacrafters Token", "MTC") {
       
        owner = msg.sender;
    }


    function mintToken(address to, uint256 amount) public  {
        require(msg.sender == owner, "Only Owner");
        _mint(to, amount);
    }

    function burnToken(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferToken(address to, uint256 amount) public returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}
