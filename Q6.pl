************** PROGRAM *************

gcd(M,0,M).
gcd(M,N,G):- N>M,gcd(N,M,G).
gcd(M,N,G):- R is M mod N,gcd(N,R,G).


************** OUTPUT *************

gcd(21,84,R).
R = 21 .

gcd(7,7,R).
R = 7.

gcd(9,17,R).
R=1