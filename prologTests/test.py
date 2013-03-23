from pyswip import Prolog

prolog = Prolog()

#prolog.consult('family2')

prolog.assertz("father(michael,john)")
prolog.assertz("father(michael,gina)")
list(prolog.query("father(michael,X)"))

for soln in prolog.query("father(X,Y)"):
	print soln["X"], "is the father of", soln["Y"]
