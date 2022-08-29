require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.7",
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
    },
  	ropsten: {
  		url: `https://speedy-nodes-nyc.moralis.io/33f6f8d07a3a20b5bba9ed87/eth/ropsten`,
  		accounts: [process.env.ropstenpk]
    },
    rinkeby: {
      url: `https://speedy-nodes-nyc.moralis.io/33f6f8d07a3a20b5bba9ed87/eth/rinkeby`,
      accounts: [process.env.rinkebypk]
    }
  }
};
