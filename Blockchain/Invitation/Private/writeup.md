# Writeup (TL;DR)

1. You can use any Bytecode to Opcode converter like etherscan or dedaub
2. Notice if you put the bytecode and decode it from hex (in cyberchef), you get some strang strings. Some of them being "Function db?...", "4 bytes...", "PUSH PUSH".

Functions in solidity are usually stored as the first 4 bytes of the function SHA-3 (Keccak Hash), ideally what we want to search here is the "PUSH4" Instruction

3. Search for the PUSH4 Instruction after decompile the bytecode to opcode, and you will find at 9 of them. 0xb00d78a5
4. Go to https://www.4byte.directory/signatures/ (eth function database) and check every PUSH4 isntruction, the flag is the function name of "0xb00d78a5"
