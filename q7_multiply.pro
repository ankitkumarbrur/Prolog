go:-	write('Enter first number :'),
	read(X1),
	write('Enter second number :'),
	read(X2),
	pwr(X1,X2,R),nl,
	write('Result is : '),write(R).

pwr(A,B,R) :- R is A*B.
				

:-initialization(go).
