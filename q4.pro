<<<<<<< HEAD
go:-    write('Enter a n (fibonacci series) :'),
    read(X1),
    fib(X1,R),nl,
    write('nth term in fibonacci is : '),write(R).

fib(0,0).
fib(1,1).
fib(2,1).
fib(A,R):- A>2,
            A1 is A - 1,
            A2 is A - 2,
            fib(A1,R1),
            fib(A2,R2),
            R is R1+R2.

:-initialization(go).
=======
go:-	write('Enter a number :'),
	read(X1),
	fact(X1,R),nl,
	write('Factorial is : '),write(R).

fact(0,1).
fact(A,R):-( A>0 ,
	A1 is A-1,
	fact(A1,R1),
	R is R1*A).

:-initialization(go).
>>>>>>> 725b638f08c12034118181641d2f7d9c176ac6cd
