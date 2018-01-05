 
************** PROGRAM *************

det([the|B],B).

noun([man|B],B).

noun([apple|B],B).

verb([sings|B],B).

verb([eats|B],B).

noun_p(A,B) :- det(A,C) , noun(C,B).

verb_p(A,B) :- verb(A,B).

verb_p(A,B) :- verb(A,C) , noun_p(C,B).

sentence(A,B) :- noun_p(A,C) ,verb_p(C,B).



************** OUTPUT *************

sentence([the,man,eats,the,apple],B).
B = [] .

sentence([eats,man,the],B).
false.


