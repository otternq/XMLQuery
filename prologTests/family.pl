open_db :-
        odbc_connect('mysql:dbname=prolog_test;host=localhost', _,
                     [ user('prologuser'),
                       password('prologpass'),
                       alias(localhost),
                       open(once)
                     ]).

children(X) :-
        odbc_query(localhost, 'SELECT (lemma) FROM children',X).

