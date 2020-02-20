go:-
    write('Enter a list'),nl,
    createList(L),nl,
    write('The list is : '),
    printList(L).

oddlength([X|T]):-
    evenlength(T).

evenlength([]).
evenlength([X|T]):- 
    oddlength(T).


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