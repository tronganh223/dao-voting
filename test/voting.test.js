const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Voting Contract", function () {

  let voting;

  beforeEach(async function () {

    const Voting = await ethers.getContractFactory("Voting");
    voting = await Voting.deploy();

    await voting.waitForDeployment();

  });

  it("Should create a proposal", async function () {

    await voting.createProposal("Launch new feature");

    const proposal = await voting.getProposal(0);

    expect(proposal[0]).to.equal("Launch new feature");

  });

  it("Should allow voting", async function () {

    await voting.createProposal("Upgrade protocol");

    await voting.vote(0);

    const proposal = await voting.getProposal(0);

    expect(proposal[1]).to.equal(1);

  });

});
