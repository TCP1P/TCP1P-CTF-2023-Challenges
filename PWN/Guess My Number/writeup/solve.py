from pwn import *
import ctypes

libc = ctypes.CDLL("/lib/x86_64-linux-gnu/libc.so.6")
elf = context.binary = ELF("../src/guessmynumber/guess")

def conn():
    if args.REMOTE:
        p = remote("127.0.0.1", 7331)
    else:
        p = process(elf.path)
    return p

p = conn()

libc.srand(1337)

random = libc.rand()
print(random)

pay = random + 1337331 ^ 0xcafebabe

p.sendline(str(pay))

p.interactive()