************** PROGRAM *************

merge1(X,[],X).
merge1([],Y,Y).
merge1([X|List1],[Y|List2],[X|List3]):-X<Y,merge1(List1,[Y|List2],List3).
merge1([X|List1],[Y|List2],[X,Y|List3]):-X=Y,merge1(List1,List2,List3).
merge1([X|List1],[Y|List2],[Y|List3]):-X>Y,merge1([X|List1],List2,List3).
merge1([],[],[]).


************** OUTPUT *************

merge1([1,3,5,7,9],[2,4,6,8],R).
R = [1, 2, 3, 4, 5, 6, 7, 8, 9] 