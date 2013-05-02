pEdge(T,X,Y) :- pEdge(T,X,Y,Z).

% Horizontal Edges
% Axioms

not(P,Q,R) :- call(P), call(Q),call(R),!, fail. 
not(P,Q,R). 

not(P) :- call(P),!, fail. 
not(P). 

dist(X,[]).
dist(X,L) :- not(member(X,L)).
distinct([]).
distinct([X|L]) :- dist(X,L), distinct(L).

ancAll(I,X,Z,L):-anc(I,X,Z), parAll(I,Z,L).
anc(I,X,X):-pEdge(I,X,Y).
anc(I,X,Y):-pEdge(I,X,Y).
anc(I,X,Y):-pEdge(I,X,Z),anc(I,Z,Y).


subtree(I,X,Y):-anc(I,X,Y).

parAll(I,X,[Y|L]):-pEdge(I,X,Y), parAll(I,X,L).
parAll(I,X,[]).

desc(I,X,X,0):-pEdge(I,X,Y).
desc(I,X,Y,0):-pEdge(I,X,Y).
desc(I,X,Y,D):-pEdge(I,X,Z),desc(I,Z,Y,L),D is L+1.
descAll(I,X,[]).
descAll(I,X,[Y|L]):-desc(I,X,Y,D1), descAll(I,X,L).

lca(I,X,[H|T]):-desc(I,X,H,D1),descAll(I,X,T),
   not(desc(I,Y,H,D2),descAll(I,Y,T),D2<D1), distinct([H|T]).
