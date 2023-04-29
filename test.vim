" set diffopt+=linematch:800
e  ./testdiff1.txt
vs ./testdiff2.txt
" vs ./testdiff3.txt
windo :diffthis
