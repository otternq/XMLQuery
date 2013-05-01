from pyswip import Prolog

prolog = Prolog()

prolog.consult('family')

for item in  prolog.query("parent_of(Parent, Child)"):
	print item["Parent"]


