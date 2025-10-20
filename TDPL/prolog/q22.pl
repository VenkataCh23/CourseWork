merge([], [], []).
merge(L, [], K).
merge([], K, K).
merge([L|Ls], [K|Ks], [M|Ms]) :- L=<K, merge(Ls, [K|Ks], Ms).
merge([L|Ls], [K|Ks], [M|Ms]) :- L > K, merge([L|Ls], Ks, Ms).