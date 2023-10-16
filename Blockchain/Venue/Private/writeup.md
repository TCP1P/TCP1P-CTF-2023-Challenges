# Writeup (TL;DR)

You have 2 choices here, either use the abi provided to call the "enterVenue()" function or straight up using cast to call the function.

Here is the solver.py for Venue using web3 library

```python
from web3 import Web3

w3 = Web3(Web3.HTTPProvider('https://eth-sepolia.g.alchemy.com/v2/SMfUKiFXRNaIsjRSccFuYCq8Q3QJgks8')) 
contract_address = "0x56b95CD61857A806e7F6E3da73426D1CD6e87303"
contract_abi = [
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "initialFlag",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "initialMessage",
				"type": "string"
			}
		],
		"stateMutability": "nonpayable",
		"type": "constructor"
	},
	{
		"inputs": [],
		"name": "enterVenue",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "goBack",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
]

contract = w3.eth.contract(address=contract_address, abi=contract_abi)
result = contract.functions.enterVenue().call()
print("Result of enterVenue():", result)
```

And here is the other way you can do it

```bash
cast call --rpc-url https://eth-sepolia.g.alchemy.com/v2/SMfUKiFXRNaIsjRSccFuYCq8Q3QJgks8 0x56b95CD61857A806e7F6E3da73426D1CD6e87303 "enterVenue()" | xxd -r -p
```
