list_max([L|Ls], 0) :- list_max(Ls, L, 0).
list_max([], L, L).
list_max([X|Ls], L, 0) :- (X > L -> list_max(Ls, X, 0); list_max(Ls, L, 0)).