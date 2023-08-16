from pwn import *
import time

def pad(pt):
    pad_length = 16 - len(pt)%16
    pt += bytes([pad_length]) * pad_length
    return pt

def unpad(pt):
    pad_length = pt[-1]
    if not 1 <= pad_length <= 16:
        return None
    if pad(pt[:-pad_length]) != pt:
        return None
    return pt[:-pad_length]

r = remote('159.65.136.204', 10003)
r.recv(4096)
r.sendline(b'3')
r.recvuntil(b'[+] ')
ciphertext = r.recvline().strip().decode()
print(ciphertext)

ciphertext = bytes.fromhex(ciphertext)
ivnya = ciphertext[:16]
ciphertext = ciphertext[16:]


plaintext1 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext1,bytes([index]*(index-1)))
		new_ciphertext = ivnya + ciphertext[:16] + xor(ciphertext[16:32], bytes_xor) + ciphertext[32:]#len 48
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		# print('aac', r.recv(4096))
		if "wrong" not in boi:
			if byte == 1:
				continue
			else:
				plaintext1 = bytes([byte]) + plaintext1
				print(plaintext1)
				break
		else:
			continue
		print(plaintext1)

plaintext2 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext2,bytes([index]*(index-1)))
		new_ciphertext = ivnya + xor(ciphertext[:16], bytes_xor) + ciphertext[16:32]#len 32
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		if "wrong" not in boi:
			plaintext2 = bytes([byte]) + plaintext2
			print(plaintext2)
			break
		else:
			continue
	print(plaintext2)

plaintext3 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext3,bytes([index]*(index-1)))
		new_ciphertext = xor(ivnya, bytes_xor) + ciphertext[:16]#len 16
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		if "wrong" not in boi:
			plaintext3 = bytes([byte]) + plaintext3
			print(plaintext3)
			break
		else:
			continue
	print(plaintext3)


known = plaintext3 + plaintext2 + plaintext1
print(known, unpad(known))

print("byte flipping 0")
time.sleep(3)

mau = b'ion'
newpt3 =xor(ciphertext[16:32], xor(known[32:], pad(mau)))
ciphertext = ciphertext[:16] + newpt3 + ciphertext[32:]

plaintext1 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext1,bytes([index]*(index-1)))
		new_ciphertext = ivnya + ciphertext[:16] + xor(ciphertext[16:32], bytes_xor) + ciphertext[32:]#len 48
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		# print('aac', r.recv(4096))
		if "wrong" not in boi:
			if byte == 1:
				continue
			else:
				plaintext1 = bytes([byte]) + plaintext1
				print(plaintext1)
				break
		else:
			continue
		print(plaintext1)

print("byte flipping 1, retrieving decrypted result")
time.sleep(3)

plaintext2 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext2,bytes([index]*(index-1)))
		new_ciphertext = ivnya + xor(ciphertext[:16], bytes_xor) + ciphertext[16:32]#len 32
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		if "wrong" not in boi:
			plaintext2 = bytes([byte]) + plaintext2
			print(plaintext2)
			break
		else:
			continue
	print(plaintext2)


mau = b'llcrucialvalidat'
newpt2 =xor(ciphertext[:16], xor(plaintext2, mau))
ciphertext = newpt2 + ciphertext[16:]

print("constructing and checking")


plaintext2 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext2,bytes([index]*(index-1)))
		new_ciphertext = ivnya + xor(ciphertext[:16], bytes_xor) + ciphertext[16:32]#len 32
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		if "wrong" not in boi:
			plaintext2 = bytes([byte]) + plaintext2
			print(plaintext2)
			break
		else:
			continue
	print(plaintext2)

print("byte flipping 2, retrieving decrypted result")
time.sleep(3)

plaintext3 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext3,bytes([index]*(index-1)))
		new_ciphertext = xor(ivnya, bytes_xor) + ciphertext[:16]#len 16
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		if "wrong" not in boi:
			plaintext3 = bytes([byte]) + plaintext3
			print(plaintext3)
			break
		else:
			continue
	print(plaintext3)

mau = b'nottheflagbutsti'
newiv = xor(ivnya, xor(plaintext3, mau))
ivnya = newiv

print("constructing and checking")


plaintext3 = b''
for index in range(1, 17):
	for byte in range(255):
		r.recv(4096)
		r.sendline(b'1')
		r.recv(4096)
		bytes_xor = b"\x00"*(16-index)+bytes([byte^index])+xor(plaintext3,bytes([index]*(index-1)))
		new_ciphertext = xor(ivnya, bytes_xor) + ciphertext[:16]#len 16
		new_ciphertext = new_ciphertext.hex()
		r.sendline(new_ciphertext.encode())
		r.recvuntil(b'[!] ')
		boi = r.recvline().strip().decode()
		if "wrong" not in boi:
			plaintext3 = bytes([byte]) + plaintext3
			print(plaintext3)
			break
		else:
			continue
	print(plaintext3)

finalcip = ivnya + ciphertext
r.recv(4096)
r.sendline(b'1')
r.recv(4096)
r.sendline(finalcip.hex().encode())
r.interactive()
