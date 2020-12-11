go:-	write('Enter base :'),
	read(X1),
	write('Enter power :'),
	read(X2),
	pwr(X1,X2,R),nl,
	write('Result is : '),write(R).

pwr(A,0,1).
pwr(A,1,A).
pwr(A,B,R) :- A>1,
				B1 is B - 1,
				pwr(A,B1,R1),
				R is A*R1.
				

:-initialization(go).
