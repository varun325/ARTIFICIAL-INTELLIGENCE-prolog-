************** PROGRAM *************

insert_n(1,El,L,[El|L]).
insert_n(N,El,[X|L],[X|L1]):- N1 is N-1,insert_n(N1,El,L,L1).


************** OUTPUT *************

insert_n(3,6,[1,2,3,4,5,6],R).
R = [1, 2, 6, 3, 4, 5, 6] 