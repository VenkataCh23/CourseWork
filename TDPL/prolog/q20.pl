memberx(N,[N|T]). 
memberx(N,[X|T]):-memberx(N,T). 
deleteall(N,[],[]). 
deleteall(N,[N|T],U):-!,deleteall(N,T,U). 
deleteall(N,[H|T],[H|U]):-deleteall(N,T,U). 
make_unique([],[]). 
make_unique([H|T],[H|Y]):-memberx(H,T),!,deleteall(H,T,T1),make_unique(T1,Y). 
make_unique([H|T],[H|Y]):-make_unique(T,Y).