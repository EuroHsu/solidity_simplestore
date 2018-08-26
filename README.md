# solidity_simplestore

## How to deploy

Install dependencies & configure environment variables.

```
npm install
npm install -g truffle
cp env.js.example env.js
```

There are 2 informations you need to provide.

1. `web3Url`: Ethereum full node url.
2. `privateKey`: Your private key in Ethereum.

```javascript
// env.js
let env = {
  // Private network
  devnet: {
    web3Url: 'http://127.0.0.1:8545',
    privateKey: 'YOUR_PRIVATE_KEY',
  },
  // Testing network
  testnet: {
    web3Url: 'https://ropsten.infura.io',
    privateKey: 'YOUR_PRIVATE_KEY',
  },
  // Main network
  mainnet: {
    web3Url: 'https://mainnet.infura.io',
    privateKey: 'YOUR_PRIVATE_KEY',
  }
};
```

Start to deploy SimpleStore contracts in `testnet`.

```javascript
> truffle deploy --reset --network testnet
Running migration: 2_simple_store.js
  Deploying SimpleStore...
  ... 0x45054dcb0d0847391870a7dbf007fd8cc5bb1b852d92b50a5cbce3629023da33
  SimpleStore: 0xddaa77aecb79d70e396e50f3d28c7a5dae3da5e7
Saving successful migration to network...
```
