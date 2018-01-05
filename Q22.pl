************** PROGRAM *************

multi(N1,0,0).
multi(0,N2,0).
multi(N1,1,N1).
multi(1,N2,N2).
multi(N1,N2,R):-N3 is N2-1,multi(N1,N3,N4),R is N1+N4.


************** OUTPUT *************

 multi(5,6,R).
R = 30