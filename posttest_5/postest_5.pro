predicates
nondeterm cinta(string,string)
nondeterm laki(string)
nondeterm cewe(symbol)
nondeterm tertarik(symbol,symbol)
nondeterm terbuka(symbol)

clauses
laki(memen).
laki(ravi).
laki(heri).
laki(indra).

cewe(juni).
cewe(fitri).
cewe(ise).
cewe(epi).

tertarik(memen,juni).
tertarik(ravi,juni).
tertarik(heri,juni).
tertarik(indra,ise).

terbuka(juni).
terbuka(epi).
terbuka(fitri).
terbuka(ise).

cinta(A,B):-laki(A),cewe(B),tertarik(A,B),terbuka(B).

goal
write("Cewe"),nl,
cewe(A);
write("\n"),
write("Laki"),nl,
laki(B);
write("\n"),
write("A mencintai B"),nl,
cinta(A,B).


