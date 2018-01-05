fact(N,Z):-

   N=0 -> write(Z);


   N>0 ->
   Z1 is N*Z,
   N1 is N-1,
   fact(N1,Z1)
 .

