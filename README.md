# Base Contract Deployer

Deploy and verify smart contracts on Base (L2). Includes common contract templates and deployment scripts.

## Features
- One-command contract deployment to Base mainnet/testnet
- Automatic contract verification on BaseScan
- Common contract templates (ERC20, ERC721, multisig)
- Gas estimation and optimization
- Deployment history tracking

## Supported Contracts
- ERC20 Token (with mint, burn, pause)
- ERC721 NFT (with metadata, royalties)
- MultiSig Wallet
- Timelock Controller
- Upgradeable Proxy (UUPS)

## Quick Start
```bash
# Deploy ERC20 token
forge script contracts/DeployERC20.s.sol --rpc-url base --broadcast --verify

# Deploy with custom params
forge script contracts/DeployERC20.s.sol \
  --rpc-url base \
  --broadcast \
  --verify \
  --sig "run(string,string,uint256)" "MyToken" "MTK" 1000000
```

## Environment
```bash
cp .env.example .env
# Set: PRIVATE_KEY, BASE_RPC_URL, BASESCAN_API_KEY
```

## Gas Costs (Approximate)
| Contract | Gas | Cost (~0.001 ETH/gas) |
|----------|-----|----------------------|
| ERC20 | ~1.2M | ~0.0012 ETH |
| ERC721 | ~2.5M | ~0.0025 ETH |
| MultiSig | ~3.0M | ~0.0030 ETH |
