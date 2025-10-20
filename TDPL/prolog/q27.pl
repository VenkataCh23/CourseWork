occurances(_, [], 0).
occurances(X, [L:Ls], N) :- N > 0, (X =:= L -> N1 is N - 1; N1 is N), occurances(X, Ls, N1).