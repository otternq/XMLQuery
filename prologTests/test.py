from pyswip import Prolog

prolog = Prolog()

prolog.consult('family')

list(prolog.query("siblings(X,Y)"))
