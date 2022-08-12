# NFTTRX 

NFT trading with an agent who takes care of all the complexity of working with blockchain and crypto.  Real copyright protection with licenses about what you can and can't do with your purchased IP with NFT.

## Smart Contrcts Hardhat Project


NFTTRX is an ERC721 extension.


## Run Instructions  

Try running some of the following tasks:

```shell
npx hardhat compile
npx hardhat test
GAS_REPORT=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js --network ropsten
npx hardhat coverage

```

## Hidden information management


The hash of the original information (metadata) is stored in the NFT in hashes mapping variable, making sure of veracity of the meta data.

**The Hash** is made of both, secret and open parts of the data.

The secret part is encrypted and is given in encrypted form in the metadata.
 
It's ‌encrypted with the owner's public key off-cahin.

Can be decrypted by owner's private key (off-chain as well).

### Metadata format schema



### What data to take to verify the hash

These fields organized in an objects under hashed key



## Transfer of NFTs

There are NFTs with a secret encrypted part and without it in NFTTRX.

### Transfers of NFTs without a secret information

The transfer of NFTs without a hidden information is simple and not different from the transfer of any other kind of tokens.


### Transfers of NFTs with a secret information

Upon transfer of ownership of NFTs with secret part which is encrypted, it is decrypted with the seller's key and encrypted with the buyer's key, and back in encrypted form is stored on the server.  Need:
 ‌Seller private key
 ‌Buyer's public key
 ‌Encrypted info
 In fact, the buyer must give the seller his public key, the seller re-encrypts the data and transfers the token to the buyer's addresses.
 The amount of funds for the purchase is transferred to nftrh as a trusted middle man for the period of the transfer operation nft and IPR.  Thus, payment can be made by any means, including fiat money or barter.


 # Licence

 MIT