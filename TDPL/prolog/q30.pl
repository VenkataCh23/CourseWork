removenth(0, [_|T], T).
remooventh(N, [H|T], [H|R]) :- N > 0, N1 is N - 1, removenth(N1, T, R).
insertnth(0, X, L, [X|L]).
insertnth(N, X, [H|T], [H|R]) :- N > 0, N1 is N - 1, insertnth(N1, X, T, R).
insertnth(_, X, [], [X]).