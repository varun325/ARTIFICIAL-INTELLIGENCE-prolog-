************** PROGRAM *************

hanoi(N):- move(N,l,c,r).
move(0,_,_,_).
move(N,A,B,C):-M is N-1,move(M,A,C,B),inform(A,B),move(M,C,B,A).
inform(X,Y):-write([move,a,disk,from,the,X,pole,to,Y,pole]),nl.


************** OUTPUT *************

hanoi(3).
[move,a,disk,from,the,l,pole,to,c,pole]
[move,a,disk,from,the,l,pole,to,r,pole]
[move,a,disk,from,the,c,pole,to,r,pole]
[move,a,disk,from,the,l,pole,to,c,pole]
[move,a,disk,from,the,r,pole,to,l,pole]
[move,a,disk,from,the,r,pole,to,c,pole]
[move,a,disk,from,the,l,pole,to,c,pole]
true 

 