go:-
    write('Enter a list'),nl,
    createList(L1),
    write('The list is:'),nl,
    printList(L1),nl,nl,
    write('Enter a new list for concatenation:'),nl,
    createList(L2),
    write('The list is:'),nl,
    printList(L2),
    conc(L1,L2,L3),nl,write('After concatenation list is:'),printList(L3).

conc([],[],[]):-!.
conc([],[X2|T2],[X2|T3]):-
    conc([],T2,T3).
conc([X1|T1],L2,[X1|T3]):-
    conc(T1,L2,T3).

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