require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.7",
  networks: {
  	ropsten: {
  		url: `https://speedy-nodes-nyc.moralis.io/33f6f8d07a3a20b5bba9ed87/eth/ropsten`,
  		accounts: process.env.ropstenpk
    }
  }
};
