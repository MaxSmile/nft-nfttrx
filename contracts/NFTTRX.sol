// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

// Import this file to use console.log
import "hardhat/console.sol";


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact maxim@vasilkoff.com
contract NFTTRX is ERC721, Ownable {
    uint public counter;
    uint public price;

    mapping (uint => string) public hashes;

    

    constructor() ERC721("NFTTRX", "NTX") {}

   
    function _baseURI() internal pure override returns (string memory) {
        return "https://us-central1-nfttrx.cloudfunctions.net/v1/nft/";
    }


    /**
     * @dev public minting, need to pay the price
     */
    function mint(address to) public payable returns (uint)  {
        require(price <= msg.value, "NFTTRX: Ether value sent is not enough");
        _safeMint(to, counter++);
        return counter;
    }

    /**
     * @dev public minting, need to pay the price
     */
    function mint(address to, string memory hash) public payable returns (uint)  {
        require(price <= msg.value, "NFTTRX: Ether value sent is not enough");
        _safeMint(to, counter++);
        hashes[counter] = hash;
        return counter;
    }

    /**
     * @dev free minting for the owner
     */
    function mintOwner(address to) public onlyOwner returns (uint)  {
        _safeMint(to, counter++);
        return counter;
    }

    /**
     * @dev free minting for the owner
     */
    function mintOwner(address to, string memory hash) public onlyOwner returns (uint)  {
        _safeMint(to, counter++);
        hashes[counter] = hash;
        return counter;
    }

    /**
     * @dev sets the price for the public minting
     */
    function setPrice(uint price_) public onlyOwner {
        price = price_;
    }

    /**
     * @dev withdraws Ethers full balance to the sender
     */
    function withdraw() public onlyOwner {
        payable(msg.sender).transfer(address(this).balance);
    }

    
}
