A meet in the middle (https://en.wikipedia.org/wiki/Meet-in-the-middle_attack) attack that require efficient problem solving instead of naive bruteforcing.

Summary:
The encryption mechanism involves encrypting a plaintext using AES mode ECB twice, both times using different keys. These two keys are derived from a set of 6 random digits that are repeated to make a length of 16. Example: 123456 -> 1234561234561234.

Attack idea:
1. Find a key pair by providing a sample plaintext and obtaining its corresponding sample ciphertext.
Generate all possible combinations of the first key ranging from 000000 to 999999. Use each key to manually encrypt the sample plaintext and store the results in an array.
2. Generate all possible combinations of the second key ranging from 000000 to 999999. Use each key to manually decrypt the sample ciphertext and store the results in an array.
3. Identify a value that is common in both the array of encryption results and the array of decryption results. The index of this common value in the encryption results array corresponds to the first key, while in the decryption results array, it corresponds to the second key. Accelerate this process using intersection.
4. Once both keys are identified, decrypt the flag using the second key first, followed by the first key. Flag!