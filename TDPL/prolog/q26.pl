length([], 0).
length([X|Xs], N) :- N > 0, N1 is N - 1, length(Xs, N1).