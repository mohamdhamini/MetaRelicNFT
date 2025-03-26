const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log("Deploying contract with:", deployer.address);

  const MetaRelicNFT = await hre.ethers.getContractFactory("MetaRelicNFT");

  // ✅ حتما await بزن
  const contract = await MetaRelicNFT.deploy();

  // ✅ حالا این متد معتبره
  await contract.deployed();

  console.log("MetaRelicNFT deployed to:", contract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
