from pyswip import Prolog

prolog = Prolog()

    #for row in result:
     #   prolog.assertz("father("+ row[1]  +","+ row[2]  +")")

#prolog.consult('databaseFacts')
prolog.consult('tree')
prolog.consult('databaseFacts')

prolog.assertz("father(michael,john)")
prolog.assertz("father(michael,gina)")
    
#father = list(prolog.query("father(Y, X)"))
father = list(prolog.query("root(2,V1,_), parAll(2,V1,[V2,V3]), pEdge(2,V1,V3,0.262), node(2,V3,myh16), pEdge(2,V1,V2,0.125), ancAll(2,V2,V12,[V9,V4]), node(2,V4,myh7), hEdge(2,V12,V3), !."))

print father
