go:-	write('Enter a number :'),
	read(X1),
	factorial(X1,R),nl,
	write('factorial is : '),write(R).

factorial(0,1).
factorial(A,R):-( A>0 ,
	A1 is A-1,
	factorial(A1,R1),
	R is R1*A).

:-initialization(go).
