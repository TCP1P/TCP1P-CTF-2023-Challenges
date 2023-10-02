from libnum import grey_code
import os

_start = 0x10a0
key = 0x017f0
len_key = 0x1c05 - key

with open('../dist/flag','rb') as f:
    
    data = f.read()
    
    # grab all excluding _start and key
    half = data[:_start]
    remain = data[_start+len_key:]

    # .text section i.e _start, main
    _text = data[_start:_start+len_key]

    # key from /dev/urandom located next to .text, and was reversed
    _key = data[key:key+len_key][::-1]
    
    recover = b""

    # some shitty encryption here, grey code and xor, I just cant code harder encryption :(
    for i in range(len_key):
        recover += bytes([grey_code(_key[i]) ^ _text[i]])
    
    f.close()
    
    # from pwn import *
    # context.arch = 'amd64'
    # print(disasm(recover))

    recover = list(recover)
    
    # patch the jnz to jz address
    patch_jz_idx = 485
    recover[patch_jz_idx] = 0

    # construct the elf and execute flag
    full = half + bytearray(recover) + remain
    pid = os.memfd_create("final_flag")
    mf = os.fdopen(pid, mode="wb")
    mf.write(full)
    mf.flush()

    os.execve(pid, ["final_flag"], {})
