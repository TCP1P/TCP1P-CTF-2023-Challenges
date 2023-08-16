from Crypto.Cipher import AES
import random
from Crypto.Util.Padding import pad
from pwn import *
import time
from tqdm import tqdm
t = time.time()


r = remote('159.65.136.204', 10001)
# r = remote('localhost', 7777, level='debug')
r.recvuntil(b"Alice: My message")
ciphertext = r.recvline().strip().decode()
r.recvuntil(b"Alice: Now give me yours!")
plaintextsample = b"a"
r.recvline()
r.sendline(plaintextsample)
r.recvuntil(b'Steve: ')
ciphertextsample = r.recvline().strip().decode()
print(ciphertext, ciphertextsample)


print('collecting resultenc')

resultenc = []
for i in range(0, 1000000):
	key = (str(i).zfill(6)*4)[:16].encode()
	cipher = AES.new(key, mode=AES.MODE_ECB)
	ct = cipher.encrypt(pad(plaintextsample, 16))
	resultenc.append(ct)

print('collecting resultdec')

resultdec = []
ciphertextsample = bytes.fromhex(ciphertextsample)
for i in range(0, 1000000):
	key2 = (str(i).zfill(6)*4)[:16].encode()
	cipher = AES.new(key2, mode=AES.MODE_ECB)
	ct = cipher.decrypt(ciphertextsample)
	resultdec.append(ct)

assert len(resultdec) == len(resultenc)

ciphertext =  bytes.fromhex(ciphertext)
thesame = list(set(resultenc).intersection(set(resultdec)))[0]


firstkey = resultenc.index(thesame)
secondkey = resultdec.index(thesame)
print(thesame, firstkey, secondkey)
cipher = AES.new((str(secondkey).zfill(5)*4)[:16].encode(), mode=AES.MODE_ECB)
pt = cipher.decrypt(ciphertext)
cipher = AES.new((str(firstkey).zfill(5)*4)[:16].encode(), mode=AES.MODE_ECB)
pt = cipher.decrypt(pt)
print(pt)
print(time.time() - t)