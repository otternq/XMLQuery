open_wordnet :-
        odbc_connect('prologtest', _,
                     [ user('prologuser'),
                       password('prologpass'),
                       alias(prologa),
                       open(once)
                     ]).


children(X) :-
        odbc_query(prologa, 'SELECT * FROM children',X).

