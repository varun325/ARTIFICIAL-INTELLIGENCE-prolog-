************** PROGRAM *************

power(Num,0,1).
power(Num,P,A):-P1 is P-1,power(Num,P1,A1),A is Num*A1.

************** OUTPUT *************
power(4,3,M).
M = 64