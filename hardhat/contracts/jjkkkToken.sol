// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Importing OpenZeppelin's ERC20 standard implementation
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract jjkkkToken is ERC20, Ownable {
    
    // Constructor to initialize the ERC20 token with name and symbol
    constructor(uint256 initialSupply) ERC20("jjkkk", "JJKKK") {
        // Mint the initial supply to the contract owner
        // This is done only once when the contract is deployed
        _mint(msg.sender, initialSupply);
    }

    // Function to mint new tokens, callable only by the owner
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    // Function to burn tokens, callable only by the owner
    function burn(address from, uint256 amount) external onlyOwner {
        _burn(from, amount);
    }
}