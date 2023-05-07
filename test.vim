" set diffopt+=linematch:800
e  ./diffexample3_1.txt
vs ./diffexample3_2.txt
vs ./diffexample3_3.txt
windo :diffthis
