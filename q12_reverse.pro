go:-
    write('Enter a list'),nl,
    createList(L),nl,
    write('The list is : '),
    printList(L),nl,nl,
    write('Reverse of the list is:'),
    reverse(L,R),
    printList(R).

reverse([],[]):-!.
reverse([X|T],[L|X]):-
    reverse(T,L).

enter(X):-
    write('Enter element:'),
    read(X).

createList(L):-
    enter(X),createList(X,L).
createList(-1,[]):-!.
createList(X,[X|T]):-
    enter(X1),createList(X1,T).

printList([]):-!.
printList([H|T]):-
    write(' '),write(H),printList(T).

:-initialization(go).