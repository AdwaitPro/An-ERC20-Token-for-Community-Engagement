// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import OpenZeppelin ERC-20 token contract
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DiscussToken is ERC20, Ownable {
    // Constructor to initialize the token
    constructor() ERC20("DiscussToken", "DISC") Ownable(msg.sender) {
        // Mint initial supply of tokens to the owner
        _mint(msg.sender, 1000000 * (10 ** decimals()));
    }

    // Function to reward tokens to users
    function rewardTokens(address to, uint256 amount) external onlyOwner {
        _mint(to, amount * (10 ** decimals())); // Mint tokens to the specified address
    }
}
