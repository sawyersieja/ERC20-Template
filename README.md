# ERC20 Token Template (Foundry + OpenZeppelin)

This repository contains a clean, minimal scaffold for deploying ERC20 tokens using Foundry and OpenZeppelin. It is designed to be flexible and production-ready, providing a solid starting point for future coin/token projects.

---

## What This Repo Does

* Deploys an ERC20-compliant token smart contract
* Allows the contract owner to mint tokens to any wallet
* Minimal and extendable template for creating new token projects quickly

---

## How to Use It

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/ERC20-Template.git
cd ERC20-Template
```

### 2. Install Dependencies

```bash
forge install
```

### 3. Build the Project

```bash
forge build
```

### 4. Recommended: Use `cast wallet` Instead of `.env`

```bash
cast wallet import defaultKey --interactive
```

This will securely store your private key encrypted.

### 5. Deploy to Sepolia

```bash
forge script script/ERC20Template.s.sol:DeployERC20Template \
  --rpc-url https://ethereum-sepolia-rpc.publicnode.com \
  --sender 0xYourAddress \
  --broadcast -vvvv
```

---

## How It Works

### `src/ERC20Template.sol`

```solidity
contract ERC20Template is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Token Name", "TokenSymbol") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
```

* Inherits from OpenZeppelin's secure ERC20 implementation
* `mint()` is only accessible to the contract owner
* Tokens can be minted to any wallet at any time

---

## Tech Stack

| Tool                                                              | Purpose                                          |
| ----------------------------------------------------------------- | ------------------------------------------------ |
| [Foundry](https://getfoundry.sh/)                            | Build, test, and deploy Solidity smart contracts |
| [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts) | Secure token implementations                     |
| [cast](https://getfoundry.sh/cast/reference/overview)       | CLI for on-chain interaction                     |
| [Ethereum Sepolia](https://sepolia.etherscan.io/)                 | Public Ethereum testnet                          |

---

## Useful Commands

### Manage Wallets

```bash
cast wallet list
```

### Mint Tokens to an Address

```bash
cast send 0xYourContractAddress "mint(address,uint256)" 0xRecipientAddress 150e18 \
  --account defaultKey \
  --rpc-url https://ethereum-sepolia-rpc.publicnode.com
```

### Run Tests

```bash
forge test -vvvv
```

### Generate Remappings

```bash
forge remappings > remappings.txt
```

---

## Project Structure

```
ERC20-Template/
├── lib/                    # External libraries (OpenZeppelin, forge-std)
├── src/                   # Main contract file
├── script/                # Deployment script
├── test/                  # Unit tests (optional)
├── foundry.toml           # Foundry configuration
├── remappings.txt         # Path aliases for imports
├── .gitignore             # Git exclusions
└── README.md
```

---

## ⚠️ Security & Deployment Notes

* Avoid committing private keys to `.env` or source control.
* Use `cast wallet` to securely encrypt and store keys.
* This project is optimized for testnet usage. Add more access controls and safety mechanisms before deploying to mainnet.

---

## Author

Created by [Sawyer Sieja](https://github.com/sawyersieja). Fork or reuse as needed!