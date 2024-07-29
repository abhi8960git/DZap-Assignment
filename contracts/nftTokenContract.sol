// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MyNFT
 * @dev Simple ERC721 Token example, where tokens can be minted by the contract owner.
 */
contract MyNFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;

    /**
     * @dev Constructor that gives msg.sender the contract ownership and initializes the ERC721 token.
     */
    constructor() Ownable(msg.sender) ERC721("MyNFT", "MNFT") {}

    /**
     * @notice Mints a new token.
     * @param to The address that will own the minted token.
     */
    function safeMint(address to) public onlyOwner {
        _safeMint(to, _tokenIdCounter);
        _tokenIdCounter++;
    }
}
