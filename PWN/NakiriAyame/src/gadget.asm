// +build amd64

#include "gadget.h"

// void gadget()
TEXT ·gadget(SB), NOSPLIT, $0
    // push 0x1
    MOVL $1, AX
    PUSHQ AX

    // pop %rdi
    POPQ DI

    // ret
    RET

    // pop %rax
    POPQ AX

    // ret
    RET

    // xor %rsi, %rsi
    XORQ SI, SI

    // xor %rdx, %rdx
    XORQ DX, DX

    // ret
    RET