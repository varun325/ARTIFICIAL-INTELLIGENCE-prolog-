************** PROGRAM *************

sumlist([],0).
sumlist([X|L1],S):-sumlist(L1,S1),S is X+S1.


************** OUTPUT *************

sumlist([1,2,3,4,8,0,5,9,7],M).
M = 39.
