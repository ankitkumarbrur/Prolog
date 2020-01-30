go:-    
    write('Enter a list :'),
    createList(X1),
    printList(X1).

enterEl(X):-
    nl,write('Enter a Element :'),
    read(X).

createList(X1):- 
    enterEl(X),
    createList(X,X1).

createlist(-1,[]):-!.
createList(X,[X|T]):-
    enterEl(X1),
    createList(X1,T).

printList([H|T]):-  
    write(' '),
    write(H),
    printList(T).

:-initialization(go).