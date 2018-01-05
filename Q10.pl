
************** PROGRAM *************

conc([],L,L).
conc([X|Y],M,[X|N]):- conc(Y,M,N).
reverse1([X],X).
reverse1([H|T],R):- reverse1(T,R1),conc(R1,[H],R).
compare([],[]).
compare([A|B],[C|D]):- A=C,compare(B,D).
palindrome(L):- reverse1(L,R),compare(R,L).


************** OUTPUT *************

palindrome([a,b,c,d,d,c,b,a]).
true.

palindrome([a,b,b,c]).
false.