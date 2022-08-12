
const hre = require("hardhat");

async function main() {


  const NFTTRX = await hre.ethers.getContractFactory("NFTTRX");
  let contract = await NFTTRX.deploy();

  await contract.deployed();

  console.log("NFTTRX is deployed to:", contract.address, contract);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
