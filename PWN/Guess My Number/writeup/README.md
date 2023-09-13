# Guess My Number 🤓

## Overview & Description

Author : rennfurukawa

Difficulty : Medium

My friend said if i can *guess* the right number, he will give me something. 
Can you help me?

[guess](../dist/guess)

## Hints

Use the same *seed* while randomize the number

## TL;DR

- Crack the rand() function with the same seed (1337) 
- Because rand() is executed once, the value is always same
- Calculate the exact key with the known value (random & 0xcafebabe)
- Use XOR to recover key

## Exploitation

We were given the binary **guessmynumber**, decompile it to ghidra and we see there is vuln() function as the main program 

![](https://i.imgur.com/uDt6CjQ.png)

I already change the variable name, so we can conclude that

- Key is our input
- If our input XOR-ed with random value + 1337331 then equal to **0xcafebabe**, we can print the flag

### Cracking rand() with known seed 

So the idea is to find the random value that program generated and calculate the exact key

<details>
<summary>Code</summary>

```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
	srand(1337);
	printf("%d\n",rand());
}
```
</details>

![](https://i.imgur.com/twPQyP0.png)

Because the program executed rand() once, the **randomize** value doesn't change, so we clearly know that the server generated same value as we did

### Calculating key using reversible XOR

After we find the random number, we need to add it with **1337331**, and now the need to calculate the **key**

![](https://i.imgur.com/RuVwTIH.png)

From this we can calculate the key, because we already know the random value and the result of XOR operation

So lets pretend that :
```
A = Key

B = (Random Number + 1337331) 

C = 0xcafebabe 
```

Because XOR is **reversible**, we can recover A (key) from this equation

$$A \oplus B = C$$ 

$$B \oplus C = A$$

![](https://i.imgur.com/6dtgHmf.png)

After we find the exact key, we can send it to server and get the flag !

![](https://i.imgur.com/k3NiRlY.png)


## Solve Script

<details>
<summary>solve.py</summary>

```python
from pwn import *
import ctypes

libc = ctypes.CDLL("/lib/x86_64-linux-gnu/libc.so.6")

libc.srand(1337)

random = libc.rand()
print(random)

io = remote("127.0.0.1", 7331)

pay = random + 1337331 ^ 0xcafebabe

io.sendline(str(pay))

io.interactive()
```
</details>







