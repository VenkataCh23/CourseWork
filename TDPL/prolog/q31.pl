appendx(X, [], [X]).
appendx(X, [L|Ls], [L|Ms]) :- appendx(X, Ls, Ms).
reversex([], []).
reversex([L|Ls], Y) :- reversex(Ls, L1), appendx(L, L1, Y).