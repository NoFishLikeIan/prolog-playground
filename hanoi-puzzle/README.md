# The hanoi puzzle

We have to main clauses of the predicate `move`. The first clause describes moving a single disk.
The second is the recursive solution. For example let's define:
_N=3, X=left, Y=right, Z=center_ where N is number of disks. Then it amounts to

```prolog
move(3, left, right, center) if
  move(2, left, center, right), then
  move(1, left, right, center) then,
  move(2, center, right left).
```
