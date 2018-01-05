************** PROGRAM *************

maxlist([],0).
maxlist([H|T],Max):-maxlist(T,Maxrest),max(H,Maxrest,Max).
max(X,Y,Max):-X>=Y,Max=X.
max(X,Y,Max):-X<Y,Max=Y.


************** OUTPUT *************

 maxlist([1,2,3,4,8,0,5,9,7],M).
M = 9 
