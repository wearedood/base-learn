import { ethers } from "hardhat";

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying all Base Learn contracts with account:", deployer.address);
  console.log("Account balance:", ethers.formatEther(await ethers.provider.getBalance(deployer.address)));
  
  const contracts: Record<string, string> = {};
  
  try {
    // Deploy all 13 contracts
    // Each contract must be deployed individually
    // Users will need to submit each address to Base Learn
    
    console.log("\n=€ Starting deployment of all 13 contracts...\n");
    
    // Add deployment logic here for each contract
    // See individual deploy scripts for examples
    
    console.log("\n Deployment complete!");
    console.log("Submit your contract addresses at: https://docs.base.org/base-learn/docs/welcome");
    
  } catch (error) {
    console.error("Deployment failed:", error);
    process.exit(1);
  }
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });