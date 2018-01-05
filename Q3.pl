 
************** PROGRAM *************

max_no(X,Y,M):-X>Y,M is X.
max_no(X,Y,M):-M is Y.


************** OUTPUT *************
 max_no(63,20,Y).
Y = 63 