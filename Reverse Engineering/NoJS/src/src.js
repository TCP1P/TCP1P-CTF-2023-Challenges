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
    if (hashCode(secret) == 3381085) {
        const key = xorStr("\x1a\x01\x0a\x16\x31\x00\x10\x3a\x0f\x36\x15\x00\x1c\x10\x3c\x09\x01\x07\x04\x3a\x05\x0c\x1a\x3a\x0c\x1c\x17\x3a\x0a\x06\x0d\x11\x31\x0b\x0c\x11\x06\x0c\x11\x3a\x04\x1c\x10\x11\x31\x1c\x10\x00\x31\x00\x17\x3a\x1a\x06\x3c\x02\x0b\x1d\x3c\x11\x06\x0c\x3c\x03\x02\x08\x04", secret);
        console.log(rc4("\xaf\x91\x47\x9b\xb1\x9d\x52\xc3\x99\x9a\x4f\x95\x1b\x42\x0e\x68\xb6\x9e\x41\x2a\x00\x65\xc9\x4f\x5e\x1c\xa5\x4b\x11\x9e\x97\x07", key));
    } else {
        console.log("Nope.");
    }
    
    rl.close();
});