
************** PROGRAM *************

speaks(bob,russian).
speaks(mary,russian).
speaks(john,english).
speaks(mary,english).
understands(A,B):- speaks(A,C),speaks(B,C).


************** OUTPUT *************

understands(bob,john).
false.

understands(bob,mary).
true 