************** PROGRAM *************

mem_list(X,[X|_]).
mem_list(X,[_|T]):- mem_list(X,T).


************** OUTPUT *************

mem_list(5,[1,2,4,6,5,7,9]).
true 


mem_list(5,[3,2,4,6,7,8]).
false.