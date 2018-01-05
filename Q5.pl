 
************** PROGRAM *************

fibo(1,1).
fib0(2,1).
fibo(N,T):-N1 is N-1,N2 is N-2,generate_fib(N1,T1),generate_fib(N2,T2),T is T1+T2.



**************OUTPUT *************

fibo(15,R).
R = 610 