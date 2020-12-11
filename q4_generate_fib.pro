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
