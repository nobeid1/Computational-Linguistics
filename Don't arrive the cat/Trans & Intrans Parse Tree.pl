% the sentence rule
s --> np_nom_sing, vp_sing_trans.
s --> np_nom_plur, vp_plur_trans.

s --> np_nom_plur_third, vp_plur_trans.
s --> np_nom_plur_first, vp_plur_trans.

s --> np_nom_sing_third, vp_sing_trans.
s --> np_nom_sing_first, vp_plur_trans.


s --> np_nom_plur, vp_intrans.
s --> np_nom_sing, vp_intrans.

s --> np_nom_sing_first, vp_intrans.
s --> np_nom_sing_third, vp_intrans.

s --> np_nom_plur_first, vp_intrans.
s --> np_nom_plur_third, vp_intrans.


% noun phrase rules
np_nom_sing --> det, n_sing.
np_nom_plur --> det, n_plur.

np_nom_sing_third --> pro_nom_sing_third.
np_nom_sing_first --> pro_nom_sing_first.


np_nom_plur_first --> pro_nom_plur_first.
np_nom_plur_third --> pro_nom_plur_third.

np_acc --> det, n_sing.
np_acc --> det, n_plur.
np_acc --> pro_acc.

% verb phrase with intransitive verb
vp_intrans --> v_intrans.

% verb phrase with transitive verb
vp_sing_trans --> v_sing_trans, np_acc.
vp_sing_trans_third --> v_sing_trans, np_acc.
vp_sing_trans_first --> v_sing_trans, np_acc.

vp_plur_trans --> v_plur_trans, np_acc.
vp_plur_trans_first --> v_plur_trans, np_acc.
vp_plur_trans_third --> v_plur_trans, np_acc.

% lexical rules
det --> [the].
n_sing --> [cat].
n_plur --> [cats].
pro_nom_sing_third --> [she].
pro_acc --> [her].
pro_nom_plur_third --> [they].
pro_acc --> [them].
pro_nom_sing_first --> [i].
pro_nom_plur_first --> [we].
v_intrans --> [arrived].
v_plur_trans --> [like].
v_sing_trans --> [likes].
