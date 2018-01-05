************** PROGRAM *************

mem_list(X,[X|_]).
mem_list(X,[_|T]):- mem_list(X,T).
remdup(L,M):- dup(L,[],M).
dup([],A,A).
dup([H|T],A,L):-mem_list(H,A),dup(T,A,L).
dup([H|T],A,L):-dup(T,[H|A],L).


************** OUTPUT *************

remdup([1,2,3,4,5,3,5],M).
M = [1,2,3,4,5] 