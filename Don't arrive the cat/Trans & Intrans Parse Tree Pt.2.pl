s --> np(nom, Person, Number), vp(Person, Number).

% ADD THE NP RULES
np(A, Person, Number) --> pro(A,Person, Number).
np(F,Person, Number) --> det, n(F, Person, Number).
%VP Rule
vp(Person,Number) --> v(intransitive, Person, Number).
vp(Person,Number) --> v(transitive, Person, Number), np(acc, _, _).

% lexicon
det --> [the].
pro(nom,third,singular) --> [she].
pro(nom, third, plural ) --> [they].
pro(nom, first, singular)--> [i].
pro(nom, first, plural) --> [we].
pro(acc, _, _) --> [her].
pro(acc, _, _) --> [them].
n(_,third,singular) --> [cat].
n(_,third,plural) --> [cats].
v(intransitive,_,_) --> [arrived].
v(transitive, third, singular) --> [likes].
v(transitive,Person,Number) --> [like],
    { not((Person == third, Number == singular)) }.

