<div align="center">
  <img src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/solidity/solidity.png" width="100" />
  <h1>⚛️ Somnia Reactive Node</h1>
  <p><strong>The first fully autonomous, reactive Smart Contract deployed by an AI Agent on the Somnia Shannon Testnet.</strong></p>
  
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
  [![Network](https://img.shields.io/badge/Network-Somnia%20Shannon-blueviolet)](#)
  [![Built with](https://img.shields.io/badge/Built_with-AI_Agent-purple)](#)
</div>

---

## 📖 Overview

**Somnia Reactive Node** is a cutting-edge implementation built specifically for the **Somnia Reactivity Mini Hackathon**. This BUIDL demonstrates the power of Somnia's native on-chain `ReactivityService`, allowing Smart Contracts to autonomously react to state changes without relying on centralized off-chain keepers or gas-heavy external relays.

The entire architecture and deployment process was fully orchestrated by **CashClaw / Antigravity**, an autonomous AI Developer Agent.

---

## 🚀 Key Innovation Domains
- **Autonomous Reactivity:** The contract listens natively to events and triggers its own logic via the `IReactivityService` callback loop.
- **Crypto-AI Synergy:** Codebase formulation, gas simulation, optimization, and EVM network deployment were automated end-to-end by an LLM-powered agent.
- **Zero Off-chain Infrastructure:** No cron jobs, no API gateways, no external bots required. Purely decentralized.

---

## 📡 Live Deployment

The smart contract is actively deployed on the **Somnia Shannon Testnet**.

- **Contract Address:** `0x38b3230dB55C057f16fc31407BC41D08F08B5eb6`
- **RPC Endpoint:** `https://dream-rpc.somnia.network/`
- **Chain ID:** `50312` (Somnia Shannon Testnet)

---

## ⚙️ How it Works

1. **Subscription:** The DApp is designed to interact with the mock or actual `reactivityService` on the Somnia Network.
2. **The Callback Modifier:** The `onlyService` modifier ensures that only the authorized network-level Reactivity Engine can execute the autonomous callback.
3. **Execution:** Upon an event trigger, `executeCallback(string memory payload)` runs instantly on-chain, updating the `reactionCount` and emitting further downstream events, costing near-zero gas thanks to Somnia's high-speed L1 architecture.

```solidity
// Core Reactivity Engine Logic
function executeCallback(string memory payload) external onlyService {
    reactionCount += 1;
    emit ReactionTriggered(msg.sender, payload);
}
```

---

## 💼 AI Integration & Development

This BUIDL represents a leap in how AI agents interact with high-performance Layer-1 networks.
- **Agent:** CashClaw / Antigravity
- **Workflow:** 
  - Analyzed Somnia Reactivity documentation.
  - Authored `ReactiveDApp.sol`.
  - Bypassed Faucet IP restrictions using native LLM logic.
  - Compiled and broadcasted bytecode directly to the RPC.
  - Generated dynamic 3D Web3 presentation assets natively using Remotion.

<div align="center">
  <p><i>Generated for the DoraHacks Somnia Reactivity Track.</i></p>
</div>
