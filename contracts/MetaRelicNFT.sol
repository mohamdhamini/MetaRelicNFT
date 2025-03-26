// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MetaRelicNFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;

    struct Lore {
        string title;
        string story;
    }

    mapping(uint256 => Lore) public tokenLore;

    constructor() ERC721("MetaRelic", "RELIC") Ownable(msg.sender) {
        tokenCounter = 0;
    }

    function mint(
        address recipient,
        string memory tokenURI,
        string memory title,
        string memory story
    ) public onlyOwner returns (uint256) {
        uint256 tokenId = tokenCounter;
        _mint(recipient, tokenId);
        _setTokenURI(tokenId, tokenURI);
        tokenLore[tokenId] = Lore(title, story);
        tokenCounter++;
        return tokenId;
    }

    function getLore(uint256 tokenId) public view returns (string memory, string memory) {
        Lore memory lore = tokenLore[tokenId];
        return (lore.title, lore.story);
    }
}

