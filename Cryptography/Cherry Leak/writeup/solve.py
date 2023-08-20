from sage.all import factor
from pwn import *
from math import gcd
from Crypto.Util.number import long_to_bytes

# context.log_level = "debug"
r = remote("0.0.0.0", 13339)

r.sendlineafter(b"> ", b"2")
r.sendlineafter(b"> ", b"-")
r.recvuntil(b"= ")
p_minus_q = int(r.recvline().strip())

r.sendlineafter(b"> ", b"2")
r.sendlineafter(b"> ", b"%")
r.recvuntil(b"= ")
p_mod_q = int(r.recvline().strip())

kq = p_minus_q - p_mod_q

r.sendlineafter(b"> ", b"1")
r.sendlineafter(b"> ", b"p")
r.sendlineafter(b"> ", b"2")
r.sendlineafter(b"> ", b"-")
r.recvuntil(b"= ")
p2_minus_q = int(r.recvline().strip())

r.sendlineafter(b"> ", b"2")
r.sendlineafter(b"> ", b"%")
r.recvuntil(b"= ")
p2_mod_q = int(r.recvline().strip())

k2q = p2_minus_q - p2_mod_q

q = gcd(kq, k2q)
q = int(factor(q)[-1][0])

phi = q-1
e = 65537
d = pow(e, -1, phi)

r.sendlineafter(b"> ", b"3")
r.recvuntil(b"= ")
c = int(r.recvline().strip())

m = pow(c, d, q)
print(long_to_bytes(m).decode())