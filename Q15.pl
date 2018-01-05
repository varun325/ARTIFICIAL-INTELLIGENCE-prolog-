 
************** PROGRAM *************

n_element(0,[],'Wrong position').
n_element(N,[],'There is no such position').
n_element(1,[H|L],H).
n_element(N,[X|L],R):-N1 is N-1,nth_element(N1,L,R).

************** OUTPUT *************

n_element(5,[1,4,56,67,28,99],X).
X = 28 