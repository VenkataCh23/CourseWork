nth(1, [X|Xs], X).
nth(N, [L|Ls], X) :- N > 0, N1 is N-1, nth(N1, Ls, X).