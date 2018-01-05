************** PROGRAM *************

delete1(X,[],[]).
delete1(X,[Y|List1],[Y|List2]):-X\=Y,delete1(X,List1,List2).
delete1(X,[Y|List1],List1):-X=Y,delete1(X,List1,List2).

************** OUTPUT *************

 delete1(4,[1,2,3,4,5,6,7,8],L).
L = [1, 2, 3, 5, 6, 7, 8] 