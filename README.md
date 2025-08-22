# Base Learn Solutions 🎓

Complete, working smart contract solutions for all 13 Base Learn exercises. Earn your NFTs and unlock Guild.xyz roles! 🏆

## 🚀 Overview

This repository contains battle-tested smart contracts that successfully pass all Base Learn validations. Each contract has been deployed and verified to mint the corresponding NFT on Base Sepolia testnet.

### What you'll earn:
- ✅ **13 Soulbound NFTs** - Proof of your smart contract mastery
- 🏅 **Guild.xyz Roles** - Newcomer, Acolyte, Consul, Prefect, Supreme
- 💎 **13 TalentProtocol Points** - Build your on-chain reputation

## 📋 Prerequisites

- Node.js v18+ and npm
- MetaMask or Coinbase Wallet
- Base Sepolia ETH (get from [faucet](https://www.coinbase.com/faucets/base-ethereum-goerli-faucet))
- Basic understanding of Solidity and smart contracts

## 🛠 Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/base-learn-solutions.git
cd base-learn-solutions

# Install dependencies
npm install

# Set up environment variables
cp .env.example .env
# Edit .env and add your private key (NEVER commit this!)
```

## 📁 Contract Solutions

Each exercise is in its own directory with the exact contract name Base Learn expects:

| Exercise | Contract | Description |
|----------|----------|-------------|
| 01 | `BasicMath.sol` | Overflow-safe arithmetic operations |
| 02 | `ControlStructures.sol` | FizzBuzz and time-based logic |
| 03 | `EmployeeStorage.sol` | Optimized storage patterns |
| 04 | `FavoriteRecords.sol` | Array manipulation |
| 05 | `FavoriteRecords.sol` | Mapping operations |
| 06 | `InheritanceContracts.sol` | Contract inheritance patterns |
| 07 | `GarageManager.sol` | Struct management |
| 08 | `ErrorTriageExercise.sol` | Error handling and debugging |
| 09 | `AddressBookFactory.sol` | Factory pattern with `new` keyword |
| 10 | `ImportsExercise.sol` | Library imports and usage |
| 11 | `HaikuNFT.sol` | ERC-721 NFT implementation |
| 12 | `UnburnableToken.sol` | Minimal token implementation |
| 13 | `WeightedVoting.sol` | ERC-20 governance token |

## 🚀 Deployment Guide

### Deploy All Contracts

```bash
# Compile all contracts
npx hardhat compile

# Deploy to Base Sepolia
npx hardhat run scripts/deploy-all.ts --network baseSepolia
```

### Deploy Individual Contracts

```bash
# Deploy specific exercise (replace XX with exercise number)
npx hardhat run scripts/deploy-XX.ts --network baseSepolia
```

## ✅ Submission Process

1. **Deploy your contracts** to Base Sepolia testnet
2. **Copy the deployed contract address** from the terminal
3. **Visit [Base Learn](https://docs.base.org/base-learn/docs/welcome)** 
4. **Navigate to the exercise** you want to submit
5. **Paste your contract address** and click submit
6. **Mint your NFT** after successful validation

## 🔑 Important Notes

### Security
- **NEVER** commit your `.env` file or private keys
- Use a dedicated wallet for testnet deployments
- Keep your private keys secure

### Validation Tips
- Base Learn expects **exact** function signatures
- Don't modify function names or parameters
- Some exercises require specific Solidity versions
- If validation fails, check gas estimation errors

### Common Issues
- **"Unable to estimate network fee"** - Contract validation failed
- **"Transaction underpriced"** - Wait for pending transactions to clear
- **Validation failures** - Ensure exact function signatures match

## 📚 Resources

- [Base Learn Platform](https://docs.base.org/base-learn/docs/welcome)
- [Base Documentation](https://docs.base.org/)
- [Base Sepolia Faucet](https://www.coinbase.com/faucets/base-ethereum-goerli-faucet)
- [Base Sepolia Explorer](https://sepolia.basescan.org)
- [Guild.xyz Base Learn](https://guild.xyz/base-learn)

## 🤝 Contributing

Found an issue or have an improvement? Contributions are welcome!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/improvement`)
3. Commit your changes (`git commit -m 'Add improvement'`)
4. Push to the branch (`git push origin feature/improvement`)
5. Open a Pull Request

## 📜 License

MIT License - feel free to use these solutions to complete Base Learn!

## 🙏 Acknowledgments

- Base Learn team for creating this educational platform
- OpenZeppelin for secure contract libraries
- The Base ecosystem community

---

**⚡ Ready to become a Base Learn graduate?** Deploy these contracts and earn your NFTs!

Remember: Learning by doing is the best way to master smart contracts. Use these solutions to understand the patterns, then try building your own variations! 🚀