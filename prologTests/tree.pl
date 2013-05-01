parAll(I, X, []).
parAll(I, X, []) :- pEdges(I, X, Y), parAll(I, X, L).

anc(I, X, Y) :- pEdges(I, X, Y).
anc(I, X, Y) :- pEdges(I, X, Y), anc(I, Z, Y)
ancAll(I, X, Z, L) :- anc(I, X, Z), parAll(I, X, L).

ancestor(X, Y) :- edge(X, Y).
ancestor(X, Y) :- edge(X, Z), ancestor(Z, Y).

ca(I, I, I).
ca(I, J, K) :- ancestor(K, I), ancestor(K, J).

nlca(I, J, K) :- ca(I, J, K), ca(I, J, L), ancestor(K, L).
lca(I, J, K) :- ca(I, J, K), not nlca(I, J, K)

slca(I, J, K) :- I < J, tlca(I, J, K), !.
slca(I, J, K) :- J < I, tlca(J, I, K), !.

tlca(I, J, K) :- edge(K, I), K >= J, !.
tlca(I, J, K) :- edge(L, I), tlca(L, J, K), !.

desc(I, X, X, O) :- pEdges(I, X, Y).
desc(I, X, Y, O) :- pEdges(I, X, Y).
desc(I, X, Y, D) :- pEdges(I, X, Z), desc(I, Z, Y, L), D is L + 1.

descAll(I, X, []).
descAll(I, X, [Y|L]) :- desc(I,X, Y, D1), descAll(I, X, T).

lca(I, X, [H|T]) :- desc(I, X, H, D1), descAll(I, X, T),
    not(desc(I, Y, H, D2), descAll(I, Y, T), D2 < D1),
    distinct([H|T]), !.