# Defining the factorial

A clause without a body is a `unit clause`, otherwise it is a rule. Here we have both.
The declarative reading is as follows:

- _The factorial of 0 is 1_

- *The factorial of N is F if N>0 and N1 is N-1 and the factorial of N1 IS F1 and F is N*F1\*

To prove the second condition consider the tree:

```math
factorial(3,6) -> 3 > 0 -- 2 is 3-1 -- factorial(2,2) -- 6 is 3*2

factorial(2, 2) -> 1 > 0 -- 1 is 2-1 -- 2 is 2 * 1
/.../
```

Down till `factorial(0,1) :- true.`.
