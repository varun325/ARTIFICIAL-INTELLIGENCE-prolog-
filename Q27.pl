************** PROGRAM *************

edge(1,2).
edge(1,3).
edge(1,4).
edge(2,5).
edge(3,5).
edge(3,7).
edge(3,6).
edge(4,6).
edge(2,1).
edge(3,1).
edge(4,1).
edge(5,2).
edge(5,3).
edge(7,3).
edge(6,3).
edge(6,4).



mem_list(X,[X|_]).
mem_list(X,[_|T]):- mem_list(X,T).

conc([],L,L).
conc([X|Y],M,[X|N]):- conc(Y,M,N).
reverse1([],[]).
reverse1([H|T],R):- reverse1(T,R1),conc(R1,[H],R).

dfs(S,G,L):- dfs1(S,G,[S],L).
dfs1(S,G,L1,L):-S=G,!,reverse1(L1,L).
dfs1(X,G,L1,L):-edge(X,Y),not(mem_list(Y,L1)),dfs1(Y,G,[Y|L1],L).


************** OUTPUT *************

 dfs(1,7,P).
P = [1, 2, 5, 3, 7] ;
P = [1, 3, 7] ;
P = [1, 4, 6, 3, 7] ;
false.