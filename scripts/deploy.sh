#!/bin/bash
# Deploy contract to Base
set -e
NETWORK="${1:-base-mainnet}"
CONTRACT="${2:-BaseToken}"
case "$NETWORK" in
    base-mainnet) RPC_URL="https://mainnet.base.org" ;;
    base-goerli) RPC_URL="https://goerli.base.org" ;;
    *) echo "Unknown network"; exit 1 ;;
esac
echo "Deploying $CONTRACT to $NETWORK..."
forge script contracts/Deploy${CONTRACT}.s.sol --rpc-url "$RPC_URL" --broadcast --verify
echo "Done!"
