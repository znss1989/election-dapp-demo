# Election demo Dapp

## Usage
### Deploy and test
1. Launch ganache desktop or ganache-cli by `node_modules/.bin/ganache-cli`
2. Deploy the contract to the local blockchain network by `truffle migrate` or `truffle migrate --reset`
3. Test the contract by `truffle test`, which uses `test/election.js`

### Interact in console
1. To interact with deployed contract by `truffle console`
2. Inside truffle console, fetch the deployed contract instance by `Election.deployed().then(function(i) {app = i})`
3. Get the instance candidate by `app.candidates(0)` 

### Interact via frontend
1. Add MetaMask in browser, set its custom RPC according to setting in ganache desktop
2. Import one of the account (private key) from ganache to MetaMask
3. Lauch locally by `npm run dev`
4. Run the application in Chrome