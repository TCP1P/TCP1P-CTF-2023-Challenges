from ctypes import CDLL
from libnum import n2s, s2n

def gray_code(n):
    return n ^ (n >> 1)


def rev_gray_code(g):
    n = 0
    while g:
        n ^= g
        g >>= 1
    return n

cdll = CDLL('/lib/x86_64-linux-gnu/libc.so.6')

cdll.rand()
cdll.rand()
random = [cdll.rand() & 0xFF for _ in range(6)]
print(random)
a = cdll.rand()
def encrypt(target:int):
    
    target = list(n2s(target))
    for i in range(len(target)):
        target[i] ^= random[i]

    target = map(n2s, target)
    target = s2n(b''.join(target))

    for _ in range(a % len(n2s(target))):
        target = gray_code(target)
    
    print(target)
    print(hex(target))


def decrypt(target:int):
    for _ in range(a % len(n2s(target))):
        target = rev_gray_code(target)
    
    target = list(n2s(target))
    print(target)
    for i in range(len(target)):
        target[i] ^= random[i]
    print(target)
    target = map(n2s, target)
    target = s2n(b''.join(target))
    print(target)
    print(hex(target))

n= 0x5593edf307e4
for i in range(3):
    n = rev_gray_code(n)
    print(hex(n))

print()
a = list(n2s(n))
for i, j in enumerate(random):
    print(hex(a[i]))
    print(j)
    a[i] ^= j
print(list(map(hex, a)))
print(hex(s2n(b''.join(map(n2s,reversed(a))))))

print()
n = 0x40b1283ca411
a = list(reversed(list(n2s(n))))
for i, j in enumerate(random):
    print(hex(a[i]))
    print(j)
    a[i] ^= j
n = s2n(b''.join(map(n2s,a)))
print(hex(n))
print()
for i in range(3):
    n = gray_code(n)
    print(hex(n))

# for i in range(3):
#     n = gray_code(n)
# print(n)

# print(hex(n))

# print(hex(rev_gray_code(0x562d016ed0ee)))
# print(hex(gray_code(0x643601b49f4b)))

# coba reverse gray code