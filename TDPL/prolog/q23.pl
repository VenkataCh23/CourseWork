add_up_list([], []).
add_up_list([X|Xs], Y) :- prefixsum([X|Xs], 0, Y).
prefixsum([], _, []).
prefixsum([X|Xs], Prev, [Y|Ys]) :- Y is X+Prev, prefixsum(Xs, Y, Ys).