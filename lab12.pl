path(makkah, madinah).
path(madinah, makkah).
path(madinah, taif).
path(madinah, tabuk).
path(makkah, riyadh).
path(tabuk, taif).
path(taif, tabuk).
path(taif, dammam).
path(qatif, madinah).
path(qatif, dammam).
path(dammam, qatif).
path(dammam, riyadh).
path(riyadh, dammam).

find_path(X, Y, Path) :-
    travel(X, Y, [X], ReversePath),
    reverse(ReversePath, Path).

travel(X, Y, Visited, [Y|Visited]) :-
    path(X, Y).

travel(X, Y, Visited, Result) :-
    path(X, Z),
    \+ member(Z, Visited),
    travel(Z, Y, [Z|Visited], Result).
