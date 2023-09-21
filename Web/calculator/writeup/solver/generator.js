let funcs = [
  Math.abs,
  Math.acos,
  Math.acosh,
  Math.asin,
  Math.asinh,
  Math.atan,
  Math.atan2,
  Math.atanh,
  Math.cbrt,
  Math.ceil,
  Math.clz32,
  Math.cos,
  Math.cosh,
  Math.exp,
  Math.expm1,
  Math.floor,
  Math.fround,
  Math.hypot,
  Math.imul,
  Math.log,
  Math.log10,
  Math.log1p,
  Math.log2,
  Math.max,
  Math.min,
  Math.pow,
  Math.round,
  Math.sign,
  Math.sin,
  Math.sinh,
  Math.sqrt,
  Math.tan,
  Math.tanh,
  Math.trunc,
]
let x
console.log("COMBINATION = {")
for (let i = 112; i <= 126; i++)
  outerloop:
  for (const a of funcs) {
    for (const b of funcs) {
      for (const c of funcs) {
        for (const d of funcs) {
          for (const e of funcs) {
            for (const f of funcs) {
              x = a(b(c(d(e(f(Number(Math.clz32())))))))
              if (x == Number(i)) {
                let math = `Math.clz32,Math.${f.name},Math.${e.name},Math.${d.name},Math.${c.name},Math.${b.name},Math.${a.name}`.split(",Math.abs")[0]
                console.log(`${x}:"${math}",`)
                break outerloop
              }
            }
          }
        }
      }
    }
  }
console.log("}")
