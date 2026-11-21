edge(makkah, madinah).
edge(makkah, riyadh).
edge(madinah, makkah).
edge(madinah, taif).
edge(madinah, tabuk).
edge(tabuk, taif).
edge(taif, tabuk).
edge(taif, dammam).
edge(qatif, madinah).
edge(qatif, dammam).
edge(dammam, qatif).
edge(dammam, riyadh).
edge(riyadh, dammam).

find_path(X, Y, Path) :-
    travel(X, Y, [X], ReversePath),
    reverse(ReversePath, Path).

travel(X, Y, Visited, [Y|Visited]) :-
    path(X, Y).

travel(X, Y, Visited, Result) :-
    path(X, Z),
    \+ member(Z, Visited),
    travel(Z, Y, [Z|Visited], Result).

