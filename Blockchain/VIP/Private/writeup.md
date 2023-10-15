# Writeup (TL;DR)

You were asked to call the `help()` function to know about the description and what you should do in here. To solve this challenge you need to utilize `foundry cast` tools, that make you able to interact with a contract without knowing the abi.

```bash
cast call --rpc-url <rpc> <contract-addr> "help()" | xxd -r -p
```

Upon calling that you'll be able to see 3 function, our goal here is to enter as VIP, so we need a ticket first for that and thus we call the `stealVIPCode()`

```bash
cast call --rpc-rul <rpc> <contract-addr> "stealVIPCode()" | xxd -r -p
```

It returns a string of information and a bytecode (ticket), you can either use ether.js abiCoder function or just straight up decode it from hex, the intended way however is to use ether.js abiCoder to get a clean output

```javascript
const ethers = require('ethers');
const encodedData = '0x0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000002f5443503150317374436c61737353656174202d2069732074686520564950205469636b6574207468657920736169640000000000000000000000000000000000';
const abiCoder = new ethers.utils.AbiCoder();
const decodedData = abiCoder.decode(['string'], encodedData);
console.log(decodedData);
```

And it will return this string `TCP1P1stClassSeat - is the VIP Ticket they said`. Now we just need to use the ticket to enter as a VIP using cast again. Since we are going to give an input or artgument to the function, we need to use `send` instead of `call` this time, and we need to provide our private-key

```bash
cast send --rpc-url <rpc> --private-key <priv-key> <contract-address> "Entrance(string)" TCP1P1stClassSeat 
```

Upon success, we just need to call the `getFlag()` function and we will get the flag.

```bash
cast call --rpc-url <rpc> <contract-address> "getFlag()"
```