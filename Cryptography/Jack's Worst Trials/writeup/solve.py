import pkg_resources
pkg_resources.require("pyjwt==1.5.0")
import jwt # note this is the PyJWT module (version 1.5.0), not python-jwt
import requests

# # Private key generated using: openssl genrsa -out rsa-or-hmac-2-private.pem 2048
# with open('challenge_files/rsa-or-hmac-2-private.pem', 'rb') as f:
#    PRIVATE_KEY = f.read()
# # Public key generated using: openssl rsa -RSAPublicKey_out -in rsa-or-hmac-2-private.pem -out rsa-or-hmac-2-public.pem
# with open('challenge_files/rsa-or-hmac-2-public.pem', 'rb') as f:
#    PUBLIC_KEY = f.read()



#kisanak
jwt0 = input("jwt0")

#bebek
jwt1 = input("jwt1")

from base64 import urlsafe_b64decode
from Crypto.Util.number import bytes_to_long, long_to_bytes
import gmpy2
from hashlib import sha256

def pkcs1_v1_5_encode(msg: bytes, n_len: int):
    SHA256_Digest_Info = b'\x30\x31\x30\x0D\x06\x09\x60\x86\x48\x01\x65\x03\x04\x02\x01\x05\x00\x04\x20'
    T = SHA256_Digest_Info + sha256(msg).digest()
    PS = b'\xFF' * (n_len - len(T) - 3)
    return b'\x00\x01' + PS + b'\x00' + T


def get_magic(jwt):
    header, payload, signature = jwt.split(".")

    raw_signature = urlsafe_b64decode(f"{signature}==")
    raw_signature_int = gmpy2.mpz(bytes_to_long(raw_signature))

    # In RS256 we sign the base64 encoded header and payload padded using PKCS1 v1.5:
    padded_msg = pkcs1_v1_5_encode(f"{header}.{payload}".encode(), len(raw_signature))
    padded_int = gmpy2.mpz(bytes_to_long(padded_msg))

    return gmpy2.mpz(pow(raw_signature_int, e) - padded_int)


e = gmpy2.mpz(65537)
magic0 = get_magic(jwt0)
magic1 = get_magic(jwt1)

N = gmpy2.gcd(magic0, magic1)
assert N != 1

print(hex(N))


# 0xac093f13ecc248298f46e6c16267db10fd6a955282165b665a1bbea1dc831651cf3a76eddb72e1ffca011a4664fc8956f9cd592e2c6dec0fb656bb5af4a9c00d3f6bd1e0a116fc1835450fa890d1f48653b18d005d33616e8da4246c98da98ce76d44090ab16c5de9e972cbb84e258b2dfbba47cb09667f31b7195d68887bccf
