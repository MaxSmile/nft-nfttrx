const {
  loadFixture
} = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");

describe("NFTTRX", function () {
  // We define a fixture to reuse the same setup in every test.
  // We use loadFixture to run this setup once, snapshot that state,
  // and reset Hardhat Network to that snapshopt in every test.
  async function deployFixture() {


    // Contracts are deployed using the first signer/account by default
    const [owner, otherAccount] = await ethers.getSigners();

    const NFTTRX = await ethers.getContractFactory("NFTTRX");
    const contract = await NFTTRX.deploy();

    await contract.deployed();

    console.log("Deployed", contract);
    return { owner, otherAccount, contract };
  }

  describe("Deployment", function () {


    it("Should set the right owner", async function () {
      const { contract, owner } = await loadFixture(deployFixture);

      expect(await contract.owner()).to.equal(owner.address);
    });


    });


  });

  describe("Functions", function () {
    describe("Validations", function () {


    });

    describe("Events", function () {




    });
});
