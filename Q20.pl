************** PROGRAM *************

check(L):-evenlength(L),write('even').
check(L):-oddlength(L),write('odd').

evenlength([]).
evenlength([X1,X2|T]):-evenlength(T).
oddlength([X]).
oddlength([X1,X2|T]):-oddlength(T).


************** OUTPUT *************

 evenlength([1,2,3,4,8,0,5,9,7]).
false.

 oddlength([1,2,3,4,8,0,5,9,7]).
true 

 oddlength([1,2,3,4,8,0,5,9]).
false.

 evenlength([1,2,3,4,8,0,5,9]).
true.