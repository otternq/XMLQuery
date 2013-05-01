from pyswip import Prolog

prolog = Prolog()

prolog.consult('family')

print(list(prolog.query("parent_of(Parent, Child)")))

