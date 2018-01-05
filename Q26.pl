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


bfs(S,G,L):- 	clean_db,asserta(queue(S,[S])),!,
		queue(X,L1),f_succ(X,L1,Y),
		G=Y,!,queue(Y,L2),reverse1(L2,L),
		retractall(queue(_,_)).

f_succ(X,L,Y):-	edge(X,Y),not(mem_list(Y,L)),
		asserta(queue(Y,[Y|L])).

f_succ(X,L,Y):-	retract(queue(X,L)),fail.
clean_db:-	retractall(queue(_,_)).



************** OUTPUT *************

bfs(1,7,Path).
Path = [1, 3, 7] 