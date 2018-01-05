************** PROGRAM *************

fact(0,1).
fact(N,R):-N1 is N-1,fact(N1,R1),R is N*R1.

************** OUTPUT *************

fact(8,R).
R = 40320 