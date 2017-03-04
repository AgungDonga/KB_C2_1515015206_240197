PREDICATES
putra(STRING,STRING)
saudara_perempuan(STRING,STRING)
saudara_laki(STRING,STRING)
menikah(STRING,STRING)
ayah(STRING ayah,STRING putra )
kakek(STRING,STRING)
moyang(STRING,STRING)
cicit(STRING,STRING)
nondeterm ipar_perempuan(STRING,STRING)

CLAUSES
putra("Ikhsan","Bentang").
saudara_perempuan("Dini","Dina").
saudara_laki("Adi","Lintang").
menikah("Ikhsan","Dini").
menikah("Lintang","Surga").
cicit("Eko","Andy").
ayah(A,B):-putra(B,A).
kakek(A,B):-ayah(A,C), ayah(C,B).
ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B).
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).
moyang(A,B):-cicit(B,A).
GOAL
moyang("Andy",X).