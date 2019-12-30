
transition(1,X,2) :- labial(X).
transition(2,U,3) :- U= (l); U= (r); U=(y).
transition(1,Y,4):- coronal(Y).
transition(4,Z,3):- Z=(r) ; Z = (w).
labial(p).
labial(b).
labial(f).
coronal(t).
coronal(d).
coronal(th).
coronal(sh).
initial(1).
final(3).


