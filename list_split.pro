go:-
    write('Enter a list'),nl,
    createList(L),
    write('The list is:'),nl,
    printList(L),nl,
    write('Enter size of first list :'),
    read(N),
    split_list(L,N,L1,L2),nl,
    write('L1 is:'),nl,
    printList(L1),nl,
    write('L2 is:'),nl,
    printList(L2).

split_list(L,0,L1,L):-!.
split_list([X|T],N,[X|T1],L2):-
    N>0,
    N1 is N - 1,
    split_list(T,N1,T1,L2);
    split_list(T,N1,T1,T).


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