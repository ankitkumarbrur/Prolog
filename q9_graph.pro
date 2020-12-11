edge('a','b').
edge('b','c').
edge('c','f').
edge('d','e').
edge('e','f').


path(X,Y):-edge(X,Y),!.

path(x,y):-edge(x,z),
            path(Z,Y).
