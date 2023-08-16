from Crypto.Util.number import *
from mt19937predictor import MT19937Predictor
import random
from pwn import *

plain = open('material.png', 'rb').read()
xored = open('lalalalululu', 'rb').read()
flago = open('babababububu', 'rb').read()

predictor = MT19937Predictor()
res = bytes_to_long(xor(plain, xored))
predictor.setrandbits(res, 19968)


key = predictor.getrandbits(len(flago)*8)
dec = open('hasil', 'wb')
dec.write(xor(flago, long_to_bytes(key)))