go:-write('Enter a list :'),
    createList(L),
    printList(L).

enterEl(X):-
    nl, write('Enter a Element :'),
    read(X).

createList(L):- 
    enterEl(X),
    createList(X,L).

createList(-1,[]):-!.
createList(X,[X|T]):-
    enterEl(X1),
    createList(X1,T).

printList([]).
printList([H|T]):-  
    write(' '),
    write(H),
    printList(T).
