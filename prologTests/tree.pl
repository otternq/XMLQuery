anc(I,X,X) :- pEdges(I,X,Y).
anc(I,X,Y) :- pEdges(I,X,X).
anc(I,X,Y) :- pEdges(I,X,Z), anc(I,Z,Y).
ancAll(I,X,Z,L) :- anc(I,X,Z), parALL(I,X,L).
