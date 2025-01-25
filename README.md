# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a Hack function.  The function `baz` computes `bar(x) - 1`, but if `bar(x)` exceeds the maximum integer value, an overflow occurs. This leads to an incorrect return value.

The `bug.hack` file contains the buggy code.  The `bugSolution.hack` file provides a solution that mitigates this overflow using type checking and error handling. 

The problem highlights the importance of considering potential overflows when performing arithmetic operations on integers, especially in languages with fixed-size integer types like Hack.