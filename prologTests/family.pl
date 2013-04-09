siblings(X,Y) :- parent(Z, X), parent(Z, Y), \+ X=Y.

open_wordnet :-
        odbc_connect('mysql:dbname=prolog_test;host=localhost', _,
                     [ user('prologuser'),
                       password('prologpass'),
                       alias(family),
                       open(once)
                     ]).


%children(X) :-
%        odbc_query(family, 'SELECT (lemma) FROM children',X).
