************** PROGRAM *************

del_all(X,[],[]).
del_all(X,[Y|List1],[Y|List2]):-X\=Y,del_all(X,List1,List2).
del_all(X,[Y|List1],List2):-X=Y,del_all(X,List1,List2).


************** OUTPUT *************

 del_all(2,[1,2,3,2,4,2,5,2,6,2],R).
R = [1, 3, 4, 5, 6] 
