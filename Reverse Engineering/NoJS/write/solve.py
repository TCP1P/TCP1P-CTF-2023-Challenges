import itertools
import string

def hash_code(s):
    hash_val = 0
    if len(s) == 0:
        return hash_val

    for char in s:
        char_code = ord(char)
        hash_val = (hash_val << 5) - hash_val + char_code
        hash_val &= 0xFFFFFFFF  # To simulate a 32-bit integer overflow

    return hash_val

for i in range(1, 10):
    for s in itertools.product(string.ascii_lowercase, repeat=i):
        print(''.join(s))
        if hash_code(s) == 0x33975d:
            print(''.join(s))
            exit()