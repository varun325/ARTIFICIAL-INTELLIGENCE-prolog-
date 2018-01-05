************** PROGRAM *************

conc([],L,L).
conc([X|Y],M,[X|N]):- conc(Y,M,N).
reverse1([],[]).
reverse1([H|T],R):- reverse1(T,R1),conc(R1,[H],R).

************** OUTPUT *************

reverse1([1,3,5,6,0,2,5,7],L).
L = [7,5,2,0,6,5,3,1].
