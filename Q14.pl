 
************** PROGRAM *************

last_el([],0).
last_el([H|T],X):-T==[],X=H.
last_el([H|Y],X):-last_el(Y,X).


************** OUTPUT *************

last_el([1,2,3,4,5,6,7,8],X).
X = 8 