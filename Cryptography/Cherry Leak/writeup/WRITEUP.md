Doing some math we can recover a multiple of q
suppose `x = p - q` and `y = p % q`
`p = kq + y`
`x + q = kq + y`
`x - y = (k-1)q`
by getting new p, we can do it again and find q by GCD
notice that the flag is relatively small, that is, FLAG < q
so we can simply find d using inverse of e mod q-1 and still be able to decrypt the flag