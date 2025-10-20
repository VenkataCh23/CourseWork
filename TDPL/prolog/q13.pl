addtoend(H,[],[H]). 
addtoend(X,[H|T],[H|T1]):-addtoend(X,T,T1). 
rotate_list([H|T],L1):-addtoend(H,T,L1).