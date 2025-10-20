reverseactual(L, K) :- reverse2(L, [], K).
reverse2([], K, K).
reverse2([L|Ls], Stack, K) :- reverse2(Ls, [L|Stack], K).