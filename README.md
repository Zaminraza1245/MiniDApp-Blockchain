# Mini dApp – Smart Contract + Frontend (Sepolia Test Network)

This mini decentralized app demonstrates how to deploy a Solidity smart contract on the **Sepolia** test network and connect it to a simple **HTML / CSS / JavaScript** frontend using **MetaMask** and **ethers.js v6**.

---

## 1 · Project Overview
The contract (`SmartContract.sol`) stores a message and a number.  
Users can read and update these values through the web interface.

**Features**
- Read current message and number  
- Update message and number  
- Increment number by 1  
- MetaMask wallet connection  
- Live Sepolia Etherscan link for transactions  

---

## 2 · What I Did Step by Step

### Smart Contract Deployment (using Remix + MetaMask)
1. Opened [**Remix IDE**](https://remix.ethereum.org/).  
2. Created a new file named `SmartContract.sol` and pasted my Solidity code.  
3. Compiled it with compiler version `0.8.20`.  
4. Switched Remix **Environment** → **Injected Provider – MetaMask** and confirmed that MetaMask was set to **Sepolia**.  
5. Entered constructor values:  
   - `_message = "Hello Sepolia"`  
   - `_number = 1`  
6. Set **VALUE = 0**, then clicked **Deploy** and approved the transaction in MetaMask.  
7. Copied the deployed **contract address** from the Remix “Deployed Contracts” section.

---

### Frontend Setup and Testing (using VS Code Live Server)
1. Downloaded all project files (`index.html`, `style.css`, `SmartContract.sol`, `logo.png`).  
2. Opened the folder in **VS Code** → installed the **Live Server** extension.  
3. Right-clicked `index.html` → **Open with Live Server**.  
   - The page opened at `http://127.0.0.1:5500/`.  
4. In MetaMask, confirmed:
   - Network = Sepolia  
   - Wallet unlocked and funded with faucet ETH  
5. On the webpage:
   - Clicked **Connect MetaMask** → approved connection.  
   - Pasted my contract address into the “Contract Address (Sepolia)” field.  
   - Clicked **Read Values** → saw the deployed message and number.  
   - Tested **Set Message**, **Set Number**, and **Increment** → all transactions succeeded and updated the values.

---

### Screenshots Taken
1. Remix IDE showing successful deployment and contract address.  
2. dApp interface connected to MetaMask (wallet + values visible).  
3. Successful transaction confirmation with tx hash shown.

All screenshots are saved in the `/screenshots` folder.

---

## 3 · How to Run It Yourself
1. **Clone or extract** the project folder.  
2. Open it in **VS Code** and use **Live Server** (`Go Live` button).  
3. Open the URL shown (usually `http://127.0.0.1:5500`).  
4. In MetaMask:
   - Switch to Sepolia  
   - Connect wallet  
5. Paste your own contract address into the field and interact.

---

## 4 · Bonus Verification (Optional)
To verify the contract on Etherscan:
1. Go to your contract’s page on [sepolia.etherscan.io](https://sepolia.etherscan.io).  
2. Choose **Contract → Verify and Publish**.  
3. Compiler = `0.8.20`, License = `MIT`.  
4. Paste the entire contract code and submit.  
Once verified, you can read and write directly from Etherscan.

---

## 5 · Files Included
```
├── SmartContract.sol
├── index.html
├── style.css
├── logo.png
└── screenshots/
    ├── 01-remix-deploy.png
    ├── 02-connected.png
    └── 03-tx-success.png
```

---

## 6 · Notes
- The app requires **MetaMask** installed in the browser.  
- Works only on the **Sepolia Test Network**.  
- Do **not** send real ETH — test ETH is free from faucets.  
- Live Server or any simple web server must be used (file:// pages can’t access MetaMask).  

---

**Contract Address (Sepolia):** `0x________________________`  
**Deployed & tested on:** `Remix + MetaMask (Sepolia)`  
**Frontend run via:** `VS Code Live Server`  

---

This README fully explains the deployment, testing, and setup process in my own words.
