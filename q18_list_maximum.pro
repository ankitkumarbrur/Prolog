go:-
    write('Enter a list'),nl,
    createList(L),nl,
    write('The list is : '),
    printList(L),nl,
    maxlist(L,M),
    write('The maximum number in the list is : '),
    write(M).

maxlist([X|T],M):-
    maxlist(T,X,M).

maxlist([],M,M):-!.

maxlist([X|T],M,M2):-
    X > M , 
    M1 is X,
    maxlist2(T,M1,M2);
    maxlist2(T,M,M2).


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