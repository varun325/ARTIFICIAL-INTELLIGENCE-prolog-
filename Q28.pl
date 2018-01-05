************** PROGRAM *************

edge(p,q).
edge(q,s).
edge(q,r).
edge(s,t).
route(A,B):- edge(A,C),route(C,B).
route(A,B):-edge(A,B).

************** OUTPUT *************

 route(p,t).
true 
