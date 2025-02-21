# Multi-Party-Payment-Splitter
# Payment Splitter Smart Contract

A simple Solidity smart contract that automatically splits incoming payments among multiple recipients based on predefined shares. This contract has:

- **No imports**
- **No constructors**
- **No input fields required during deployment**

### 📍 Deployed Address
**Edu Chain Address:** `0xAdbd8500800118e018a7b7f66361a50657eF9667`

## 🚀 Features
- Automatically splits incoming Ether among specified recipients.
- Shares are fixed and defined within the contract.
- Supports direct payments through the fallback function (`receive`).

## 🔧 How It Works
1. Send Ether directly to the contract address.
2. The contract automatically divides the payment based on the pre-set share percentages.
3. Each recipient receives their respective portion immediately.

## 📝 Predefined Recipients & Shares
- `0x1111111111111111111111111111111111111111` - **40%**
- `0x2222222222222222222222222222222222222222` - **30%**
- `0x3333333333333333333333333333333333333333` - **30%**

## 💻 Usage
To send payments:

1. Use any Ethereum-compatible wallet.
2. Send Ether directly to the contract address:
   ```
   0xAdbd8500800118e018a7b7f66361a50657eF9667
   ```
3. The contract will automatically distribute the funds.

## 🔒 Security
- Make sure the total shares sum to 100% to avoid unexpected behavior.
- This contract is designed for educational and demonstration purposes.

## 📄 License
This project is licensed under the [MIT License](LICENSE).

---
**Created with ❤️ for multi-recipient payments on the Edu Chain.**

