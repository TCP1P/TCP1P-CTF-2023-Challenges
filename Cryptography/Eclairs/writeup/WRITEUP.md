encrypt 2 x to recover N
since y^2 = x^3 + ax + b thus b = y^2 - x^3 - ax
then we can use franklin reiter to recover a and b using only a single point
after recovering a and b we can then solve the captcha and get the flag
encrypt the flag with 3 different modulus and find the root using crt