# DAO Voting

A simple onchain governance voting system built with Solidity and Hardhat.

This project demonstrates a basic DAO-style voting mechanism where users can create proposals and vote directly onchain.

---

## Features

* Create proposals
* Vote on proposals
* Track vote counts onchain

---

## Tech Stack

* Solidity
* Hardhat
* ethers.js
* Node.js

---
```
dao-voting/
│
├── contracts
│   └── Voting.sol
│
├── scripts
│   └── deploy.js
│
├── test
│   └── voting.test.js
│
├── hardhat.config.js
├── package.json
├── .env.example
└── README.md
```
---

## Installation

Clone the repository

```
git clone https://github.com/your-username/dao-voting.git
cd dao-voting
```

Install dependencies

```
npm install
```

---

## Compile Contracts

```
npx hardhat compile
```

---

## Run Tests

```
npx hardhat test
```

---

## Deploy Contract

```
npx hardhat run scripts/deploy.js --network localhost
```

---

## Future Improvements

* token-based voting
* proposal execution
* voting time limits
* DAO treasury integration

---

## License

MIT
