
*************** PROGRAM ***************

male(kunal).
female(reena).
male(karan).
parents(kunal,mahinder,kiran).
parents(reena,mahinder,kiran).
parents(karan,mahinder,kiran).


sister(X,Y):-female(X),parents(X,F,M),parents(Y,F,M).
brother(X,Y):-male(X),parents(X,F,M),parents(Y,F,M).




**************** OUTPUT *****************

sister(reena,kunal).
true.


 brother(karan,kiran).
false.