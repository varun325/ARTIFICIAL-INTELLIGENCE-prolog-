************** PROGRAM *************

delete_n(1,[H|List1],List1).
delete_n(N,[H|List1],[H|List2]):-N1 is N-1,delete_n(N1,List1,List2).


************** OUTPUT *************

 delete_n(4,[1,2,3,4,5,6,7,8],L).
L = [1, 2, 3, 5, 6, 7, 8] .

