" set diffopt+=linematch:800
e  ./testdiff2.txt
vs ./testdiff1.txt
windo :diffthis
