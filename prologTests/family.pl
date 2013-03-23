parent(paul, nick).
parent(denise, nick).
parent(paul, alex).
parent(denise, alex).

siblings(X,Y) :- parent(Z, X), parent(Z, Y), \+ X=Y.
