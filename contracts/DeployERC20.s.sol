// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";

contract DeployERC20 is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        
        // Deploy a basic ERC20
        // Replace with your actual contract
        address deployed = address(0); // placeholder
        
        vm.stopBroadcast();
        console.log("Deployed to:", deployed);
    }
}
