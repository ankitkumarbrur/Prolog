go:-
    write('Enter a list'),nl,
    createList(L),nl,
    write('The list is : '),
    printList(L),nl,
    write('Enter index to get element : '),read(N),
    nth_element(N,L,X),nl,
    write('Nth element is : '),write(X).

nth_element(N,[],'Not Found').
nth_element(N,[X|T],Y):-
    N \== Y,
    Y1 is Y + 1,
    nth_element(N,T,Y1);
    Y = X.


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