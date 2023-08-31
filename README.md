
# Metacrafters Bank README

**Metacrafters Token** is an Ethereum-based smart contract written in Solidity that implements an ERC-20 token called "Metacrafters" with the symbol "MTC." This contract extends the functionality of the OpenZeppelin ERC20 contract. Metacrafters provides basic token management features, including minting, burning, and transferring tokens.

## Features

-   **Name**: Metacrafters
-   **Symbol**: MTC
-   **Decimals**: The default ERC-20 token decimals (18)
-   **Total Supply**: The total supply is initialized with a specified amount during contract deployment.
-   **Owner**: The contract owner, who has special privileges for minting tokens.

## Getting Started

These instructions will help you understand how to deploy and use the MyToken contract on the Ethereum blockchain.

### Prerequisites

-   An Ethereum wallet (e.g., MetaMask)
-   Access to an Ethereum development environment (e.g., Remix or Truffle)
-   Basic knowledge of Solidity and Ethereum smart contracts

### Deployment

1.  Deploy the `MetaBank.sol` smart contract on the Ethereum network of your choice. Ensure you use a compatible Solidity compiler version (0.8.0 or later).
    
2.  When deploying the contract, specify the `initialSupply` parameter to set the initial supply of Metacrafters tokens. This initial supply will be assigned to the deployer's address (the contract creator).
    
3.  After deployment, the deployer's address becomes the owner of the contract and has the privilege to mint new tokens.
    

### Interacting with the Contract

Once the contract is deployed, you can interact with it using Ethereum wallets or by developing applications that make use of the MyToken functions.

#### Minting Tokens

The contract owner can mint new tokens by calling the `mintToken` function. Provide the recipient's address and the amount of tokens to mint. For example:



`function mintToken(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}` 

#### Burning Tokens

Users can burn (destroy) their own tokens by calling the `burnToken` function. Specify the amount of tokens to burn. For example:



`function burnToken(uint256 amount) public {
    _burn(msg.sender, amount);
}` 

#### Transferring Tokens

Users can transfer tokens to other addresses using the `transferToken` function. Specify the recipient's address and the amount to transfer. For example:



`function transferToken(address to, uint256 amount) public returns (bool) {
    _transfer(msg.sender, to, amount);
    return true;
}` 

## License

This project is licensed under the MIT License. You can find the full license text in the SPDX-License-Identifier comment at the beginning of the contract.

## Acknowledgments

-   OpenZeppelin for providing the ERC-20 token standard implementation.
-   Solidity developers and the Ethereum community for providing the tools and resources to create smart contracts.
