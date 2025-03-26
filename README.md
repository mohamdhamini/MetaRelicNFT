# 🧿 MetaRelicNFT

MetaRelicNFT is a smart contract project built with [Hardhat](https://hardhat.org/) that allows you to mint unique ERC-721 NFTs with custom **titles** and **stories (lore)** attached to each token.

Each NFT contains:
- A token URI (metadata URL)
- A custom title
- A custom story
- Stored on-chain using Solidity mappings

---

## 🚀 Features

- ✅ ERC-721 compliant
- ✅ Uses OpenZeppelin for security and standardization
- ✅ Stores lore (title & story) for each token
- ✅ Only the contract owner can mint NFTs

---

## 📁 Project Structure

MetaRelics/ │ ├── contracts/ │ └── MetaRelicNFT.sol # Smart contract │ ├── scripts/ │ └── deploy.js # Deployment script │ ├── test/ # (optional) Test scripts ├── hardhat.config.js # Hardhat config ├── package.json └── README


---

## ⚙️ Installation & Setup

> Make sure you have **Node.js** and **Hardhat** installed.

```bash
git clone https://github.com/your-username/MetaRelics.git
cd MetaRelics

npm install

