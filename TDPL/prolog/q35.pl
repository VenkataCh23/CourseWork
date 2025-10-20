appenddirect([], L).
appenddirect([X1|L1], L2, [X1|L3]) :- appenddirect(L1, L2, L3).