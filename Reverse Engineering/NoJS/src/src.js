function rc4(str, key) {
    let S = [];
    let keyLength = key.length;

    for (let i = 0; i < 256; i++) {
    S[i] = i;
    }

    let j = 0;
    for (let i = 0; i < 256; i++) {
        j = (j + S[i] + key.charCodeAt(i % keyLength)) % 256;
        [S[i], S[j]] = [S[j], S[i]];
    }

    let i = 0;
    j = 0;
    let result = '';

    for (let k = 0; k < str.length; k++) {
        i = (i + 1) % 256;
        j = (j + S[i]) % 256;
        [S[i], S[j]] = [S[j], S[i]];

        const charCode = str.charCodeAt(k) ^ S[(S[i] + S[j]) % 256];
        result += String.fromCharCode(charCode);
    }

    return result;
}

function hashCode(str) {
    let hash = 0;
    if (str.length === 0) {
        return hash;
    }

    for (let i = 0; i < str.length; i++) {
        const char = str.charCodeAt(i);
        hash = (hash << 5) - hash + char;
        hash |= 0;
    }

    return hash;
}

function xorStr(str, key) {
    let result = '';
    for (let i = 0; i < str.length; i++) {
        const charCode = str.charCodeAt(i) ^ key.charCodeAt(i % key.length);
        result += String.fromCharCode(charCode);
    }
    return result;
}

const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter the secret: ', (secret) => {
    if (hashCode(secret) == 0x33975d) {
        const key = xorStr("\x1a\x01\x0a\x16\x31\x00\x10\x3a\x0f\x36\x15\x00\x1c\x10\x3c\x09\x01\x07\x04\x3a\x05\x0c\x1a\x3a\x0c\x1c\x17\x3a\x0a\x06\x0d\x11\x31\x0b\x0c\x11\x06\x0c\x11\x3a\x0d\x1c\x19\x3a\x17\x06\x16\x3a\x0d\x08\x0d\x3a\x04\x1c\x10\x11\x31\x0d\x06\x06\x1c\x10\x13\x11\x31\x1d\x0b\x00\x31\x0f\x0f\x04\x09", secret);
        console.log(rc4("\x99\xd6\x78\x75\x7e\xc3\xeb\x84\xf3\x8c\x37\x6a\x0b\xe1\x25\x55\x94\x8c\x49\xfd\x07\xca\x7f\xca\x94\xd4\x68\xb1\xeb\xdc\x7d\x54", key));
    } else {
        console.log("Nope.");
    }
    
    rl.close();
});