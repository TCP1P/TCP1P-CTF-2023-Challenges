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