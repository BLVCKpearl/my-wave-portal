// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal{ 
    uint256 totalWaves; 
    mapping(address => uint256) public wavers;

    constructor(){
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        wavers[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves", totalWaves);
        return totalWaves;
    }

    function getWavesBy(address waver) public view returns (uint256){
        console.log(waver, "waved at you", wavers[waver], "times");
        return wavers[waver];
    }

    function goNow(){}




}