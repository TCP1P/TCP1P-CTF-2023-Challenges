# Writeup TL;DR

The concept of the challenge is to introduce player to Storage Allocation in Solidity called SLOT, you can learn about it here https://medium.com/@flores.eugenio03/exploring-the-storage-layout-in-solidity-and-how-to-access-state-variables-bf2cbc6f8018 but I'll give you a simple table to calculate them. By default a SLOT is a 32 bytes.

| Data Type | Bytes Allocation |
| :---: | :---: |
| address | 20 bytes |
| uintX | X/8 bytes |
| bytesX | X bytes |
| bool | 1 byte |

A special case for "Immutable" data type or we can say "Constant" data-type, they won't be stored in SLOT, rather they'll be stored in the contract bytecodes.

Here is the answer for each contract 
- Contract 1 -> 3 
- Contract 2 -> 2
- Contract 3 -> 0
- Contract 4 -> 0
- Contract 5 -> 3
- Contract 6 -> 0
- Contract 7 -> 0
- Contract 8 -> 6
- Contract 9 -> 24
- Contract 10 -> 2
- Contract hell -> 28 