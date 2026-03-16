Genestealer Counter – Warhammer 40K On‑Chain Meme Contract
This repository contains a simple, fully safe Solidity smart contract that counts Genestealer encounters on‑chain. Every time someone calls the reporting function, the public counter increases by one. Inspired by the Warhammer 40,000 universe, this project is intentionally minimal, transparent, and risk‑free.

Contract Address and Verification
The contract is deployed and fully verified on BaseScan:

https://basescan.org/address/0x3b3094204c3d92752f9c3e99fe45540265651bb0#writeContract

Anyone can:

Read the current Genestealer count

Call reportGenestealer() to increment it

View emitted events

Inspect and verify the source code

Contract Overview
The contract GenestealerCounter.sol provides:

A public counter: genestealerCount

A function to increment the counter: reportGenestealer()

An event emitted on each increment: GenestealerReported

A descriptive helper: describe()

It does not include:

Tokens

Ownership or permissions

ETH handling

External calls

Dangerous opcodes

It is purely a counter stored on‑chain.

Safety Characteristics
This contract is designed to be as safe as possible for its purpose:

No payable functions

No ETH transfers

No external contract interactions

No selfdestruct, delegatecall, or low‑level calls

No complex logic or loops

No financial attack surface

Solidity 0.8.x includes built‑in overflow protection, so the counter cannot overflow silently. Any overflow attempt would revert automatically.

Because the contract only increments a number and emits an event, it is inherently safe to interact with.

How to Use (Remix)
Open Remix: https://remix.ethereum.org

Create a file named GenestealerCounter.sol

Paste the contract code from contracts/GenestealerCounter.sol

Compile using Solidity 0.8.31

Deploy using MetaMask or Remix VM

Interact with the functions:

reportGenestealer() → increments the counter

genestealerCount() → returns the current total

describe() → returns a readable string

Purpose of This Repository
This project serves as:

A minimal example of a safe, transparent Solidity contract

A fun Warhammer 40K‑themed on‑chain meme

A learning tool for understanding public state variables, events, and simple interactions

It is not intended for financial applications or token logic.

License
This project is released under the MIT License.
