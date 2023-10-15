from sage.all import *
from Crypto.Util.number import long_to_bytes
from sympy.ntheory.modular import crt
from gmpy2 import iroot
from libnum.ecc import *
from pwn import *
list_N = []
list_ct = []

def pgcd(a, b): 
    while b:
        a, b = b, a % b
    return a.monic()

while len(list_N) < 3:
    # r = process(["python3", "eclairs.py"])
    r = remote("0.0.0.0", 13341)
    try:
        m1 = 2**256
        while True:
            r.sendlineafter(b">> ", b"1")
            r.recvline()
            a_enc = int(r.recvline().strip())
            b_enc = int(r.recvline().strip())
            r.sendlineafter(b"x: ", str(m1).encode())
            try:
                c1 = eval(r.recvline().strip())[0]
                break
            except:
                m1 += 1

        m2 = 2**266
        while True:
            r.sendlineafter(b">> ", b"1")
            r.sendlineafter(b"x: ", str(m2).encode())
            try:
                c2 = eval(r.recvline().strip())[0]
                break
            except:
                m2 += 1

        n = int(gcd(m1**3 - c1, m2**3 - c2))
        print(n.bit_length())

        P = PolynomialRing(Zmod(Integer(n)), names=('x',))
        (x,) = P._first_ngens(1)
        e = 3

        r.sendlineafter(b">> ", b"2")
        r.recvuntil(b"Calculate")
        k,xy = r.recvline().strip().split(b" X ")
        X,Y = eval(xy)
                
        f = ((x) ** e) - a_enc
        # print(f)
        g = (((Y**2 - X**3 -x*X)) ** e) - b_enc
        # print(g)
        a = int(-pgcd(f,g)[0])
        b = (Y**2 - X**3 - a*X) % n

        E = Curve(a, b, n)
        ans = E.power((X,Y), int(k))
        print(ans)
        r.sendlineafter(b"Answer: ", str(ans).encode())
        ct = int(r.recvline().strip())
        list_N.append(n)
        list_ct.append(ct)
    except Exception as e:
        print(e)
    r.close()

m = crt(list_N, list_ct)[0]
m = int(iroot(m,3)[0])
print(long_to_bytes(m)) 