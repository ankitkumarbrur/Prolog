go:-
    write('Enter a list'),nl,
    createList(L),
    write('The list is:'),nl,
    printList(L),nl,
    write('Enter a number to check if it is a member of the list :'),
    read(N),memb(L,N,R),write(R).

memb([],N,no).
memb([X|T],X,yes).
memb([X|T],N,R):-
    memb(T,N,R).

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