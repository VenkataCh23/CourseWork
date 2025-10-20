occurs([X|Xs], 0, X).
occurs([_|Xs], N, X) :- N > 0, N1 is N – 1, occurs(Xs, N1, X).
