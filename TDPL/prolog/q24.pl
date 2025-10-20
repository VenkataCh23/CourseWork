sumlist([], 0).
sumlist([X|Xs], N) :- sumlist(Xs, Other), N is X + Other.