// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Import this file to use console.log
import "hardhat/console.sol";


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact maxim@vasilkoff.com
contract NFTTRX is ERC721, Ownable {
    uint public counter;

    mapping (uint => string) public hashes;

    constructor() ERC721("NFTTRX", "NTX") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://us-central1-nfttrx.cloudfunctions.net/v1/nft/";
    }

    function mint(address to) public returns (uint)  {
        _safeMint(to, counter++);
        return counter;
    }

    function mint(address to, string memory hash) public returns (uint)  {
        _safeMint(to, counter++);
        hashes[counter] = hash;
        return counter;
    }
}
