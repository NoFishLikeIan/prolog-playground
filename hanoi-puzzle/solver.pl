move(1, X, Y, _) :-
    write('Move top disk from '),
    write(X),
    write(' to '),
    write(Y),
    nl.

move(N, X, Y, Z) :-
    N>1,
    M is N-1,
    move(M, X, Z, Y), % move N-1 left -> center
    move(1, X, Y, _), % move 1 from left -> right
    move(M, Z, Y, X). % move N - 1 center -> right