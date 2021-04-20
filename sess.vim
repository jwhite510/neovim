let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/neovim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 sess.vim
badd +1 README.md
badd +1318 src/nvim/buffer_defs.h
badd +1758 src/nvim/diff.c
badd +2353 src/nvim/screen.c
badd +0 fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/buffer_defs.h
badd +0 fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/diff.c
badd +1752 src/nvim/eval/funcs.c
badd +247 src/nvim/mouse.c
badd +1047 src/nvim/move.c
badd +0 fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/screen.c
badd +3 bookmarks.txt
badd +3612 src/nvim/normal.c
badd +3845 src/nvim/window.c
badd +1578 src/nvim/spell.c
badd +439 src/nvim/globals.h
badd +7480 src/nvim/ex_docmd.c
badd +10 src/nvim/diff.h
badd +7 src/nvim/pos.h
badd +375 term://.//37580:/bin/bash
badd +269 term://.//41364:/bin/bash
badd +303 term://.//63395:/bin/bash
badd +667 term://.//66188:/bin/bash
badd +0 term://.//66398:/bin/bash
argglobal
%argdel
$argadd .
set stal=2
edit ~/projects/neovim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/projects/neovim
tabedit fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/buffer_defs.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 176 + 136) / 273)
argglobal
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/buffer_defs.h") | buffer ~/projects/neovim/src/nvim/buffer_defs.h | else | edit ~/projects/neovim/src/nvim/buffer_defs.h | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 176 + 136) / 273)
tabedit fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 16 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 33 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 222 + 136) / 273)
argglobal
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2300 - ((3 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2300
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2647 - ((30 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2647
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,508fold
523,648fold
662,1055fold
1071,1751fold
1773,1784fold
1803,1811fold
1768,1827fold
1829,1911fold
1917,1923fold
1926,1964fold
1925,1965fold
1972,1994fold
1971,1995fold
1968,1997fold
1999,2018fold
2025,2072fold
2020,2072fold
2086,2201fold
2215,2502fold
2551,2580fold
2654,2669fold
2683,2711fold
2725,2920fold
2935,3481fold
3497,3510fold
1768
normal! zo
1768
normal! zc
1829
normal! zc
1917
normal! zc
1925
normal! zo
1926
normal! zc
1968
normal! zo
1971
normal! zo
1972
normal! zc
1999
normal! zc
2020
normal! zo
2020
normal! zc
let s:l = 1828 - ((84 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1828
normal! 03|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 16 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 33 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 222 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 7 + 27) / 54)
exe '2resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 38 + 136) / 273)
exe '3resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 38 + 136) / 273)
exe '4resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 37 + 136) / 273)
exe '5resize ' . ((&lines * 7 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 115 + 136) / 273)
exe '6resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 157 + 136) / 273)
exe '7resize ' . ((&lines * 29 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 157 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1824 - ((3 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1824
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/screen.c") | buffer ~/projects/neovim/src/nvim/screen.c | else | edit ~/projects/neovim/src/nvim/screen.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2348,2348fold
2015,2348fold
2015
normal! zo
2015
normal! zc
let s:l = 1595 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1595
normal! 015|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/screen.c") | buffer ~/projects/neovim/src/nvim/screen.c | else | edit ~/projects/neovim/src/nvim/screen.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2348,2348fold
2015,2348fold
2015
normal! zo
2015
normal! zc
let s:l = 1533 - ((9 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1533
normal! 09|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 654 - ((13 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
654
let s:c = 14 - ((3 * winwidth(0) + 18) / 37)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 14 . '|'
else
  normal! 014|
endif
lcd ~/projects/neovim
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/globals.h") | buffer ~/projects/neovim/src/nvim/globals.h | else | edit ~/projects/neovim/src/nvim/globals.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 439 - ((6 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
439
normal! 08|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/move.c") | buffer ~/projects/neovim/src/nvim/move.c | else | edit ~/projects/neovim/src/nvim/move.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1047,1068fold
let s:l = 1038 - ((10 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1038
normal! 03|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 7 + 27) / 54)
exe '2resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 38 + 136) / 273)
exe '3resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 38 + 136) / 273)
exe '4resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 37 + 136) / 273)
exe '5resize ' . ((&lines * 7 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 115 + 136) / 273)
exe '6resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 157 + 136) / 273)
exe '7resize ' . ((&lines * 29 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 157 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe '2resize ' . ((&lines * 28 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 118 + 136) / 273)
exe '3resize ' . ((&lines * 11 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 118 + 136) / 273)
exe '4resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 77 + 136) / 273)
exe '5resize ' . ((&lines * 10 + 27) / 54)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 178 - ((92 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
178
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
273
normal! zo
1133
normal! zo
1232
normal! zo
1241
normal! zo
1248
normal! zo
1289
normal! zo
1301
normal! zo
1308
normal! zo
1352
normal! zo
1429
normal! zo
2380
normal! zo
let s:l = 2486 - ((16 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2486
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
273
normal! zo
1289
normal! zo
1301
normal! zo
1308
normal! zo
1352
normal! zo
1429
normal! zo
2380
normal! zo
let s:l = 2477 - ((2 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2477
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/normal.c") | buffer ~/projects/neovim/src/nvim/normal.c | else | edit ~/projects/neovim/src/nvim/normal.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1363 - ((23 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1363
normal! 07|
lcd ~/projects/neovim
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe '2resize ' . ((&lines * 28 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 118 + 136) / 273)
exe '3resize ' . ((&lines * 11 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 118 + 136) / 273)
exe '4resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 77 + 136) / 273)
exe '5resize ' . ((&lines * 10 + 27) / 54)
tabedit ~/projects/neovim/src/nvim/move.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 67 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 68 + 136) / 273)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 67 + 136) / 273)
exe '4resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 67 + 136) / 273)
exe 'vert 5resize ' . ((&columns * 68 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1045,1066fold
1134,1143fold
1131,1147fold
1149,1150fold
1166,1169fold
1131
normal! zo
1166
normal! zc
let s:l = 1127 - ((16 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1127
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/move.c") | buffer ~/projects/neovim/src/nvim/move.c | else | edit ~/projects/neovim/src/nvim/move.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1052,1065fold
1045,1066fold
1092,1103fold
1045
normal! zo
1052
normal! zc
1092
normal! zc
let s:l = 1036 - ((8 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1036
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/normal.c") | buffer ~/projects/neovim/src/nvim/normal.c | else | edit ~/projects/neovim/src/nvim/normal.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
4142,4168fold
4142
normal! zc
let s:l = 4138 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4138
normal! 05|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/normal.c") | buffer ~/projects/neovim/src/nvim/normal.c | else | edit ~/projects/neovim/src/nvim/normal.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3586 - ((9 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3586
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/normal.c") | buffer ~/projects/neovim/src/nvim/normal.c | else | edit ~/projects/neovim/src/nvim/normal.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3610 - ((23 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3610
normal! 09|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 67 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 68 + 136) / 273)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 67 + 136) / 273)
exe '4resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 67 + 136) / 273)
exe 'vert 5resize ' . ((&columns * 68 + 136) / 273)
tabedit fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/screen.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
4wincmd h
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 273)
exe '2resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 273)
exe '3resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 45 + 136) / 273)
exe '4resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 67 + 136) / 273)
exe '5resize ' . ((&lines * 32 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 117 + 136) / 273)
exe '6resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 117 + 136) / 273)
exe '7resize ' . ((&lines * 4 + 27) / 54)
argglobal
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 738 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
738
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/screen.c") | buffer ~/projects/neovim/src/nvim/screen.c | else | edit ~/projects/neovim/src/nvim/screen.c | endif
setlocal fdm=diff
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 738 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
738
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/screen.c") | buffer ~/projects/neovim/src/nvim/screen.c | else | edit ~/projects/neovim/src/nvim/screen.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2348,2348fold
2015,2348fold
2015
normal! zo
2015
normal! zc
let s:l = 2350 - ((359 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2350
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 655 - ((19 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
655
normal! 011|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1817,1827fold
1834,1839fold
1849,1850fold
1829,1911fold
1917,1923fold
1917,1966fold
1968,1997fold
1817
normal! zc
1829
normal! zo
1834
normal! zc
1849
normal! zc
1829
normal! zc
1917
normal! zo
1917
normal! zc
1917
normal! zc
let s:l = 1972 - ((166 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1972
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2208 - ((5 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2208
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 20 + 136) / 273)
exe '2resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 20 + 136) / 273)
exe '3resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 45 + 136) / 273)
exe '4resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 67 + 136) / 273)
exe '5resize ' . ((&lines * 32 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 117 + 136) / 273)
exe '6resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 117 + 136) / 273)
exe '7resize ' . ((&lines * 4 + 27) / 54)
tabedit ~/projects/neovim/src/nvim/normal.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 46 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 73 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 152 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
4143,4169fold
4143
normal! zc
let s:l = 3609 - ((29 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3609
normal! 09|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
75,76fold
75,76fold
81,82fold
81,82fold
87,90fold
87,90fold
110,110fold
106,111fold
103,112fold
102,113fold
129,129fold
128,130fold
136,138fold
134,139fold
124,140fold
142,142fold
123,143fold
158,159fold
165,168fold
164,169fold
157,172fold
182,184fold
181,185fold
180,186fold
199,199fold
198,200fold
196,202fold
216,216fold
215,217fold
213,219fold
233,233fold
231,234fold
229,235fold
228,236fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
252,252fold
250,253fold
248,254fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
274,279fold
285,287fold
289,291fold
293,295fold
313,313fold
313,313fold
310,314fold
323,323fold
326,327fold
326,327fold
325,327fold
322,329fold
321,330fold
310,331fold
336,336fold
359,360fold
358,362fold
374,374fold
374,380fold
382,382fold
372,384fold
386,389fold
369,391fold
400,400fold
400,405fold
407,407fold
396,409fold
411,413fold
393,414fold
420,421fold
419,422fold
368,423fold
426,428fold
430,431fold
425,432fold
436,441fold
364,442fold
355,443fold
448,448fold
452,452fold
451,453fold
448,457fold
459,461fold
306,462fold
473,473fold
472,474fold
483,483fold
485,485fold
478,486fold
488,490fold
469,491fold
495,501fold
273,502fold
519,519fold
521,521fold
514,524fold
542,542fold
541,543fold
548,548fold
552,552fold
565,565fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
574,574fold
578,578fold
583,583fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,589fold
573,590fold
596,596fold
603,603fold
602,605fold
601,606fold
563,607fold
611,611fold
560,613fold
537,614fold
630,630fold
630,631fold
629,632fold
628,633fold
626,635fold
646,646fold
650,650fold
659,659fold
661,661fold
658,663fold
645,664fold
643,665fold
671,671fold
673,673fold
670,674fold
680,680fold
682,682fold
679,683fold
701,701fold
712,712fold
712,712fold
710,713fold
705,715fold
731,732fold
734,734fold
724,738fold
740,740fold
723,741fold
722,743fold
694,745fold
759,759fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
758,770fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
787,787fold
794,795fold
794,796fold
789,797fold
802,802fold
810,810fold
808,811fold
807,812fold
818,818fold
825,825fold
830,830fold
833,833fold
823,840fold
783,842fold
845,847fold
857,857fold
870,870fold
870,871fold
869,872fold
865,874fold
887,888fold
901,901fold
900,902fold
906,906fold
913,913fold
912,914fold
918,918fold
928,930fold
886,934fold
940,941fold
937,942fold
960,960fold
963,963fold
969,969fold
972,972fold
977,977fold
981,981fold
988,988fold
992,992fold
986,993fold
983,995fold
971,998fold
962,1000fold
1005,1005fold
1010,1010fold
1016,1016fold
956,1017fold
1022,1022fold
1021,1026fold
952,1028fold
1047,1047fold
1050,1050fold
1053,1053fold
1056,1056fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1069fold
1036,1071fold
1085,1087fold
1091,1091fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1099,1099fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1093,1121fold
1081,1122fold
1149,1149fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1156fold
1163,1163fold
1163,1163fold
1178,1178fold
1178,1179fold
1183,1183fold
1181,1186fold
1194,1195fold
1194,1195fold
1194,1195fold
1194,1195fold
1194,1195fold
1191,1197fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1200,1205fold
1211,1211fold
1210,1213fold
1230,1230fold
1233,1234fold
1259,1259fold
1253,1260fold
1248,1261fold
1241,1262fold
1232,1263fold
1133,1264fold
1268,1268fold
1273,1273fold
1267,1281fold
1316,1316fold
1316,1316fold
1314,1316fold
1311,1317fold
1308,1321fold
1301,1322fold
1289,1323fold
1329,1330fold
1335,1343fold
1335,1343fold
1361,1361fold
1366,1366fold
1371,1371fold
1370,1373fold
1380,1380fold
1379,1382fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1394,1394fold
1390,1396fold
1409,1409fold
1418,1418fold
1352,1420fold
1440,1440fold
1444,1444fold
1448,1448fold
1447,1449fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1459,1459fold
1464,1464fold
1439,1467fold
1433,1477fold
1432,1479fold
1484,1484fold
1488,1491fold
1496,1496fold
1429,1497fold
1520,1522fold
1526,1526fold
1530,1531fold
1528,1532fold
1538,1538fold
1537,1540fold
1543,1543fold
1542,1545fold
1560,1560fold
1562,1562fold
1564,1567fold
1564,1567fold
1564,1567fold
1564,1567fold
1564,1568fold
1570,1572fold
1549,1573fold
1578,1578fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1582fold
1577,1583fold
1587,1587fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1591fold
1585,1592fold
1598,1598fold
1598,1598fold
1600,1600fold
1598,1604fold
1608,1609fold
1614,1614fold
1613,1615fold
1625,1625fold
1624,1626fold
1623,1629fold
1631,1633fold
1640,1640fold
1640,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1635,1640fold
1646,1646fold
1646,1646fold
1646,1646fold
1652,1652fold
1649,1654fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1659,1660fold
1658,1661fold
1669,1671fold
1608,1672fold
1687,1687fold
1686,1688fold
1674,1689fold
1536,1691fold
1697,1697fold
1696,1701fold
1705,1705fold
1507,1706fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1721,1721fold
1724,1724fold
1724,1724fold
1724,1724fold
1723,1724fold
1718,1727fold
1734,1734fold
1739,1740fold
1736,1742fold
1776,1777fold
1782,1782fold
1787,1787fold
1798,1799fold
1804,1804fold
1810,1810fold
1809,1811fold
1815,1815fold
1768,1827fold
1863,1863fold
1860,1869fold
1871,1872fold
1856,1873fold
1853,1875fold
1845,1877fold
1881,1881fold
1834,1895fold
1833,1897fold
1832,1898fold
1906,1907fold
1905,1908fold
1904,1909fold
1829,1911fold
1829,1911fold
1930,1932fold
1930,1934fold
1938,1941fold
1944,1944fold
1946,1948fold
1946,1949fold
1946,1949fold
1938,1949fold
1953,1953fold
1953,1953fold
1953,1954fold
1957,1958fold
1957,1959fold
1953,1959fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1963fold
1926,1964fold
1925,1965fold
1917,1966fold
1988,1991fold
1972,1993fold
1971,1995fold
1968,1996fold
1968,1997fold
1999,2018fold
2030,2030fold
2033,2034fold
2032,2036fold
2029,2037fold
2028,2038fold
2046,2047fold
2049,2049fold
2046,2050fold
2045,2051fold
2042,2052fold
2061,2061fold
2020,2063fold
2020,2063fold
2068,2068fold
2076,2076fold
2075,2077fold
1768,2079fold
2090,2090fold
2093,2093fold
2097,2097fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2109,2109fold
2101,2110fold
2092,2112fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2123,2123fold
2128,2128fold
2128,2128fold
2127,2128fold
2127,2129fold
2126,2131fold
2135,2135fold
2135,2135fold
2134,2135fold
2134,2136fold
2133,2138fold
2120,2140fold
2153,2153fold
2153,2154fold
2158,2158fold
2162,2162fold
2173,2173fold
2173,2173fold
2171,2173fold
2171,2175fold
2179,2179fold
2177,2182fold
2170,2183fold
2191,2191fold
2152,2193fold
2206,2206fold
2211,2211fold
2204,2213fold
2231,2232fold
2236,2237fold
2244,2244fold
2243,2245fold
2223,2247fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2249,2252fold
2249,2252fold
2258,2259fold
2254,2305fold
2313,2313fold
2312,2314fold
2318,2319fold
2321,2333fold
2335,2335fold
2335,2335fold
2335,2335fold
2335,2335fold
2336,2348fold
2335,2348fold
2307,2349fold
2307,2349fold
2254,2350fold
2254,2350fold
2357,2358fold
2357,2358fold
2362,2363fold
2362,2363fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2223,2372fold
2389,2390fold
2392,2393fold
2395,2396fold
2398,2399fold
2401,2402fold
2404,2405fold
2407,2408fold
2410,2411fold
2413,2414fold
2416,2417fold
2419,2420fold
2422,2423fold
2425,2426fold
2428,2429fold
2431,2432fold
2436,2437fold
2439,2440fold
2442,2443fold
2445,2446fold
2448,2448fold
2434,2449fold
2453,2453fold
2457,2457fold
2388,2458fold
2465,2465fold
2472,2472fold
2471,2473fold
2380,2486fold
2491,2491fold
2493,2493fold
2499,2499fold
2504,2504fold
2506,2506fold
2513,2513fold
2513,2513fold
2513,2513fold
2513,2513fold
2517,2517fold
2517,2517fold
2517,2517fold
2517,2517fold
2521,2521fold
2521,2521fold
2521,2521fold
2521,2521fold
2511,2523fold
2511,2523fold
2511,2523fold
2511,2523fold
2535,2535fold
2535,2535fold
2537,2537fold
2537,2537fold
2540,2540fold
2540,2540fold
2539,2540fold
2539,2540fold
2527,2542fold
2527,2542fold
2554,2554fold
2569,2571fold
2578,2578fold
2577,2579fold
2583,2584fold
2622,2622fold
2633,2634fold
2632,2635fold
2638,2638fold
2624,2639fold
2642,2642fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2658,2658fold
2658,2658fold
2657,2658fold
2657,2658fold
2654,2658fold
2654,2660fold
2663,2663fold
2662,2666fold
2653,2667fold
2676,2677fold
2686,2688fold
2686,2688fold
2694,2694fold
2694,2694fold
2693,2694fold
2693,2694fold
2690,2694fold
2696,2696fold
2700,2700fold
2690,2701fold
2710,2710fold
2703,2713fold
2686,2714fold
2718,2719fold
2682,2720fold
2614,2721fold
2613,2722fold
2556,2726fold
2737,2737fold
2744,2744fold
2751,2751fold
2753,2753fold
2750,2754fold
2759,2759fold
2763,2764fold
2769,2769fold
2775,2775fold
2780,2780fold
2773,2781fold
2739,2783fold
2793,2794fold
2797,2797fold
2799,2800fold
2804,2804fold
2806,2806fold
2789,2812fold
2842,2843fold
2850,2850fold
2852,2852fold
2852,2853fold
2850,2855fold
2849,2856fold
2861,2861fold
2863,2863fold
2860,2865fold
2873,2873fold
2871,2873fold
2875,2875fold
2875,2875fold
2875,2875fold
2871,2876fold
2870,2877fold
2847,2878fold
2883,2883fold
2890,2891fold
2896,2897fold
2893,2898fold
2903,2904fold
2908,2909fold
2914,2915fold
2880,2916fold
2926,2928fold
2926,2929fold
2931,2931fold
2923,2932fold
2936,2937fold
2939,2946fold
2955,2956fold
2953,2957fold
2964,2965fold
2972,2972fold
2983,2984fold
2986,2987fold
2981,2988fold
2990,2990fold
2994,2994fold
2994,2994fold
2994,2994fold
2994,2994fold
2994,2994fold
3003,3003fold
2999,3004fold
3011,3011fold
3006,3012fold
2997,3013fold
3015,3015fold
2978,3016fold
3023,3026fold
3032,3032fold
3039,3042fold
3030,3043fold
3053,3055fold
3053,3056fold
3052,3057fold
3066,3066fold
3068,3068fold
3061,3069fold
3049,3070fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3081,3081fold
3083,3083fold
3078,3084fold
3075,3085fold
3090,3092fold
3094,3095fold
3100,3100fold
2972,3101fold
3106,3107fold
2963,3108fold
3117,3117fold
3113,3119fold
2820,3120fold
3125,3125fold
3135,3136fold
3138,3140fold
3123,3141fold
3156,3156fold
3155,3157fold
3154,3158fold
3153,3159fold
3166,3166fold
3170,3170fold
3169,3171fold
3168,3173fold
3187,3187fold
3191,3192fold
3196,3197fold
3203,3203fold
3209,3209fold
3215,3215fold
3215,3215fold
3214,3215fold
3214,3215fold
3213,3215fold
3213,3217fold
3208,3218fold
3201,3219fold
3224,3224fold
3229,3229fold
3184,3236fold
3252,3253fold
3252,3254fold
3258,3259fold
3263,3264fold
3269,3269fold
3276,3276fold
3272,3279fold
3285,3285fold
3285,3285fold
3282,3285fold
3282,3291fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3268,3294fold
3243,3298fold
3313,3313fold
3309,3315fold
3330,3331fold
3335,3336fold
3342,3342fold
3341,3343fold
3349,3349fold
3349,3349fold
3349,3349fold
3348,3349fold
3356,3357fold
3362,3362fold
3322,3364fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3388,3389fold
3391,3391fold
3394,3394fold
3399,3400fold
3402,3402fold
3405,3405fold
3409,3410fold
3412,3413fold
3416,3417fold
3419,3420fold
3377,3422fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3444,3445fold
3447,3447fold
3452,3453fold
3455,3455fold
3450,3456fold
3458,3458fold
3462,3462fold
3465,3465fold
3468,3468fold
3442,3476fold
3435,3479fold
3497,3497fold
3502,3502fold
3488,3509fold
1768
normal! zo
1768
normal! zo
1829
normal! zo
1829
normal! zo
1829
normal! zc
1917
normal! zo
1917
normal! zc
1968
normal! zo
1968
normal! zo
1971
normal! zo
1972
normal! zo
1968
normal! zc
1999
normal! zc
2020
normal! zo
2020
normal! zo
2020
normal! zc
2223
normal! zo
2223
normal! zo
2254
normal! zo
2254
normal! zo
2254
normal! zo
2307
normal! zo
2307
normal! zo
2312
normal! zo
2335
normal! zo
2335
normal! zo
2335
normal! zo
2335
normal! zo
2307
normal! zc
let s:l = 1755 - ((7 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1755
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
75,76fold
75,76fold
81,82fold
81,82fold
87,90fold
87,90fold
110,110fold
106,111fold
103,112fold
102,113fold
129,129fold
128,130fold
136,138fold
134,139fold
124,140fold
142,142fold
123,143fold
158,159fold
165,168fold
164,169fold
157,172fold
182,184fold
181,185fold
180,186fold
199,199fold
198,200fold
196,202fold
216,216fold
215,217fold
213,219fold
233,233fold
231,234fold
229,235fold
228,236fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
252,252fold
250,253fold
248,254fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
274,279fold
285,287fold
289,291fold
293,295fold
313,313fold
313,313fold
310,314fold
323,323fold
326,327fold
326,327fold
325,327fold
322,329fold
321,330fold
310,331fold
336,336fold
359,360fold
358,362fold
374,374fold
374,380fold
382,382fold
372,384fold
386,389fold
369,391fold
400,400fold
400,405fold
407,407fold
396,409fold
411,413fold
393,414fold
420,421fold
419,422fold
368,423fold
426,428fold
430,431fold
425,432fold
436,441fold
364,442fold
355,443fold
448,448fold
452,452fold
451,453fold
448,457fold
459,461fold
306,462fold
473,473fold
472,474fold
483,483fold
485,485fold
478,486fold
488,490fold
469,491fold
495,501fold
273,502fold
519,519fold
521,521fold
514,524fold
542,542fold
541,543fold
548,548fold
552,552fold
565,565fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
574,574fold
578,578fold
583,583fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,589fold
573,590fold
596,596fold
603,603fold
602,605fold
601,606fold
563,607fold
611,611fold
560,613fold
537,614fold
630,630fold
630,631fold
629,632fold
628,633fold
626,635fold
646,646fold
650,650fold
659,659fold
661,661fold
658,663fold
645,664fold
643,665fold
671,671fold
673,673fold
670,674fold
680,680fold
682,682fold
679,683fold
701,701fold
712,712fold
712,712fold
710,713fold
705,715fold
731,732fold
734,734fold
724,738fold
740,740fold
723,741fold
722,743fold
694,745fold
759,759fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
758,770fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
787,787fold
794,795fold
794,796fold
789,797fold
802,802fold
810,810fold
808,811fold
807,812fold
818,818fold
825,825fold
830,830fold
833,833fold
823,840fold
783,842fold
845,847fold
857,857fold
870,870fold
870,871fold
869,872fold
865,874fold
887,888fold
901,901fold
900,902fold
906,906fold
913,913fold
912,914fold
918,918fold
928,930fold
886,934fold
940,941fold
937,942fold
960,960fold
963,963fold
969,969fold
972,972fold
977,977fold
981,981fold
988,988fold
992,992fold
986,993fold
983,995fold
971,998fold
962,1000fold
1005,1005fold
1010,1010fold
1016,1016fold
956,1017fold
1022,1022fold
1021,1026fold
952,1028fold
1047,1047fold
1050,1050fold
1053,1053fold
1056,1056fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1069fold
1036,1071fold
1085,1087fold
1091,1091fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1099,1099fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1093,1121fold
1081,1122fold
1149,1149fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1156fold
1163,1163fold
1163,1163fold
1178,1178fold
1178,1179fold
1183,1183fold
1181,1186fold
1194,1195fold
1194,1195fold
1194,1195fold
1194,1195fold
1194,1195fold
1191,1197fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1200,1205fold
1211,1211fold
1210,1213fold
1230,1230fold
1233,1234fold
1259,1259fold
1253,1260fold
1248,1261fold
1241,1262fold
1232,1263fold
1133,1264fold
1268,1268fold
1273,1273fold
1267,1281fold
1316,1316fold
1316,1316fold
1314,1316fold
1311,1317fold
1308,1321fold
1301,1322fold
1289,1323fold
1329,1330fold
1335,1343fold
1335,1343fold
1361,1361fold
1366,1366fold
1371,1371fold
1370,1373fold
1380,1380fold
1379,1382fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1394,1394fold
1390,1396fold
1409,1409fold
1418,1418fold
1352,1420fold
1440,1440fold
1444,1444fold
1448,1448fold
1447,1449fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1459,1459fold
1464,1464fold
1439,1467fold
1433,1477fold
1432,1479fold
1484,1484fold
1488,1491fold
1496,1496fold
1429,1497fold
1520,1522fold
1526,1526fold
1530,1531fold
1528,1532fold
1538,1538fold
1537,1540fold
1543,1543fold
1542,1545fold
1560,1560fold
1562,1562fold
1564,1567fold
1564,1567fold
1564,1567fold
1564,1567fold
1564,1568fold
1570,1572fold
1549,1573fold
1578,1578fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1582fold
1577,1583fold
1587,1587fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1591fold
1585,1592fold
1598,1598fold
1598,1598fold
1600,1600fold
1598,1604fold
1608,1609fold
1614,1614fold
1613,1615fold
1625,1625fold
1624,1626fold
1623,1629fold
1631,1633fold
1640,1640fold
1640,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1635,1640fold
1646,1646fold
1646,1646fold
1646,1646fold
1652,1652fold
1649,1654fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1659,1660fold
1658,1661fold
1669,1671fold
1608,1672fold
1687,1687fold
1686,1688fold
1674,1689fold
1536,1691fold
1697,1697fold
1696,1701fold
1705,1705fold
1507,1706fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1721,1721fold
1724,1724fold
1724,1724fold
1724,1724fold
1723,1724fold
1718,1727fold
1734,1734fold
1739,1740fold
1736,1742fold
1776,1777fold
1782,1782fold
1787,1787fold
1798,1799fold
1804,1804fold
1810,1810fold
1809,1811fold
1815,1815fold
1863,1863fold
1860,1869fold
1871,1872fold
1856,1873fold
1853,1875fold
1845,1877fold
1881,1881fold
1834,1895fold
1833,1897fold
1832,1898fold
1906,1907fold
1905,1908fold
1904,1909fold
1829,1911fold
1930,1932fold
1930,1934fold
1938,1941fold
1944,1944fold
1946,1948fold
1946,1949fold
1946,1949fold
1938,1949fold
1953,1953fold
1953,1953fold
1953,1954fold
1957,1958fold
1957,1959fold
1953,1959fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1963fold
1926,1964fold
1925,1965fold
1917,1966fold
1988,1991fold
1972,1993fold
1971,1995fold
1968,1996fold
2030,2030fold
2033,2034fold
2032,2036fold
2029,2037fold
2028,2038fold
2046,2047fold
2049,2049fold
2046,2050fold
2045,2051fold
2042,2052fold
2061,2061fold
2020,2063fold
2068,2068fold
2076,2076fold
2075,2077fold
1768,2079fold
2090,2090fold
2093,2093fold
2097,2097fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2109,2109fold
2101,2110fold
2092,2112fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2123,2123fold
2128,2128fold
2128,2128fold
2127,2128fold
2127,2129fold
2126,2131fold
2135,2135fold
2135,2135fold
2134,2135fold
2134,2136fold
2133,2138fold
2120,2140fold
2153,2153fold
2153,2154fold
2158,2158fold
2162,2162fold
2173,2173fold
2173,2173fold
2171,2173fold
2171,2175fold
2179,2179fold
2177,2182fold
2170,2183fold
2191,2191fold
2152,2193fold
2206,2206fold
2211,2211fold
2204,2213fold
2231,2232fold
2236,2237fold
2244,2244fold
2243,2245fold
2223,2247fold
2223,2247fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2249,2252fold
2249,2252fold
2249,2252fold
2258,2259fold
2254,2261fold
2254,2305fold
2313,2313fold
2312,2314fold
2318,2319fold
2318,2319fold
2321,2333fold
2321,2333fold
2335,2335fold
2335,2335fold
2335,2335fold
2335,2335fold
2336,2348fold
2336,2348fold
2336,2348fold
2335,2348fold
2307,2349fold
2307,2349fold
2307,2349fold
2307,2349fold
2254,2350fold
2254,2350fold
2357,2358fold
2357,2358fold
2362,2363fold
2362,2363fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2223,2372fold
2389,2390fold
2392,2393fold
2395,2396fold
2398,2399fold
2401,2402fold
2404,2405fold
2407,2408fold
2410,2411fold
2413,2414fold
2416,2417fold
2419,2420fold
2422,2423fold
2425,2426fold
2428,2429fold
2431,2432fold
2436,2437fold
2439,2440fold
2442,2443fold
2445,2446fold
2448,2448fold
2434,2449fold
2453,2453fold
2457,2457fold
2388,2458fold
2465,2465fold
2472,2472fold
2471,2473fold
2380,2486fold
2491,2491fold
2493,2493fold
2499,2499fold
2504,2504fold
2506,2506fold
2513,2513fold
2513,2513fold
2513,2513fold
2513,2513fold
2517,2517fold
2517,2517fold
2517,2517fold
2517,2517fold
2521,2521fold
2521,2521fold
2521,2521fold
2521,2521fold
2511,2523fold
2511,2523fold
2511,2523fold
2511,2523fold
2535,2535fold
2535,2535fold
2537,2537fold
2537,2537fold
2540,2540fold
2540,2540fold
2539,2540fold
2539,2540fold
2527,2542fold
2527,2542fold
2554,2554fold
2569,2571fold
2578,2578fold
2577,2579fold
2583,2584fold
2622,2622fold
2633,2634fold
2632,2635fold
2638,2638fold
2624,2639fold
2642,2642fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2658,2658fold
2658,2658fold
2657,2658fold
2657,2658fold
2654,2658fold
2654,2660fold
2663,2663fold
2662,2666fold
2653,2667fold
2676,2677fold
2686,2688fold
2686,2688fold
2694,2694fold
2694,2694fold
2693,2694fold
2693,2694fold
2690,2694fold
2696,2696fold
2700,2700fold
2690,2701fold
2710,2710fold
2703,2713fold
2686,2714fold
2718,2719fold
2682,2720fold
2614,2721fold
2613,2722fold
2556,2726fold
2737,2737fold
2744,2744fold
2751,2751fold
2753,2753fold
2750,2754fold
2759,2759fold
2763,2764fold
2769,2769fold
2775,2775fold
2780,2780fold
2773,2781fold
2739,2783fold
2793,2794fold
2797,2797fold
2799,2800fold
2804,2804fold
2806,2806fold
2789,2812fold
2842,2843fold
2850,2850fold
2852,2852fold
2852,2853fold
2850,2855fold
2849,2856fold
2861,2861fold
2863,2863fold
2860,2865fold
2873,2873fold
2871,2873fold
2875,2875fold
2875,2875fold
2875,2875fold
2871,2876fold
2870,2877fold
2847,2878fold
2883,2883fold
2890,2891fold
2896,2897fold
2893,2898fold
2903,2904fold
2908,2909fold
2914,2915fold
2880,2916fold
2926,2928fold
2926,2929fold
2931,2931fold
2923,2932fold
2936,2937fold
2939,2946fold
2955,2956fold
2953,2957fold
2964,2965fold
2972,2972fold
2983,2984fold
2986,2987fold
2981,2988fold
2990,2990fold
2994,2994fold
2994,2994fold
2994,2994fold
2994,2994fold
2994,2994fold
3003,3003fold
2999,3004fold
3011,3011fold
3006,3012fold
2997,3013fold
3015,3015fold
2978,3016fold
3023,3026fold
3032,3032fold
3039,3042fold
3030,3043fold
3053,3055fold
3053,3056fold
3052,3057fold
3066,3066fold
3068,3068fold
3061,3069fold
3049,3070fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3081,3081fold
3083,3083fold
3078,3084fold
3075,3085fold
3090,3092fold
3094,3095fold
3100,3100fold
2972,3101fold
3106,3107fold
2963,3108fold
3117,3117fold
3113,3119fold
2820,3120fold
3125,3125fold
3135,3136fold
3138,3140fold
3123,3141fold
3156,3156fold
3155,3157fold
3154,3158fold
3153,3159fold
3166,3166fold
3170,3170fold
3169,3171fold
3168,3173fold
3187,3187fold
3191,3192fold
3196,3197fold
3203,3203fold
3209,3209fold
3215,3215fold
3215,3215fold
3214,3215fold
3214,3215fold
3213,3215fold
3213,3217fold
3208,3218fold
3201,3219fold
3224,3224fold
3229,3229fold
3184,3236fold
3252,3253fold
3252,3254fold
3258,3259fold
3263,3264fold
3269,3269fold
3276,3276fold
3272,3279fold
3285,3285fold
3285,3285fold
3282,3285fold
3282,3291fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3268,3294fold
3243,3298fold
3313,3313fold
3309,3315fold
3330,3331fold
3335,3336fold
3342,3342fold
3341,3343fold
3349,3349fold
3349,3349fold
3349,3349fold
3348,3349fold
3356,3357fold
3362,3362fold
3322,3364fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3388,3389fold
3391,3391fold
3394,3394fold
3399,3400fold
3402,3402fold
3405,3405fold
3409,3410fold
3412,3413fold
3416,3417fold
3419,3420fold
3377,3422fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3444,3445fold
3447,3447fold
3452,3453fold
3455,3455fold
3450,3456fold
3458,3458fold
3462,3462fold
3465,3465fold
3468,3468fold
3442,3476fold
3435,3479fold
3497,3497fold
3502,3502fold
3488,3509fold
643
normal! zo
645
normal! zo
2204
normal! zo
2223
normal! zo
2223
normal! zo
2223
normal! zo
2223
normal! zc
2249
normal! zo
2249
normal! zo
2249
normal! zo
2249
normal! zc
2254
normal! zo
2254
normal! zo
2254
normal! zo
2254
normal! zo
2254
normal! zc
2307
normal! zo
2307
normal! zo
2307
normal! zo
2307
normal! zo
2312
normal! zo
2318
normal! zo
2321
normal! zo
2335
normal! zo
2335
normal! zo
2335
normal! zo
2335
normal! zo
2336
normal! zo
2336
normal! zo
let s:l = 2282 - ((64 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2282
normal! 07|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 46 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 73 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 152 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/screen.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 108 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 87 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2348,2348fold
2015,2348fold
2015,2348fold
2015
normal! zo
2015
normal! zo
2015
normal! zc
let s:l = 2352 - ((355 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2352
normal! 09|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1774,1827fold
1768,1827fold
1829,1911fold
1913,1915fold
1917,1966fold
1968,1997fold
1999,2018fold
2020,2063fold
1768
normal! zo
1968
normal! zo
2020
normal! zo
let s:l = 1969 - ((208 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1969
normal! 05|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
75,76fold
75,76fold
81,82fold
81,82fold
87,90fold
87,90fold
110,110fold
106,111fold
103,112fold
102,113fold
129,129fold
128,130fold
136,138fold
134,139fold
124,140fold
142,142fold
123,143fold
158,159fold
165,168fold
164,169fold
157,172fold
182,184fold
181,185fold
180,186fold
199,199fold
198,200fold
196,202fold
216,216fold
215,217fold
213,219fold
233,233fold
231,234fold
229,235fold
228,236fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
246,246fold
252,252fold
250,253fold
248,254fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
271,271fold
274,279fold
285,287fold
289,291fold
293,295fold
313,313fold
313,313fold
310,314fold
323,323fold
326,327fold
326,327fold
325,327fold
322,329fold
321,330fold
310,331fold
336,336fold
359,360fold
358,362fold
374,374fold
374,380fold
382,382fold
372,384fold
386,389fold
369,391fold
400,400fold
400,405fold
407,407fold
396,409fold
411,413fold
393,414fold
420,421fold
419,422fold
368,423fold
426,428fold
430,431fold
425,432fold
436,441fold
364,442fold
355,443fold
448,448fold
452,452fold
451,453fold
448,457fold
459,461fold
306,462fold
473,473fold
472,474fold
483,483fold
485,485fold
478,486fold
488,490fold
469,491fold
495,501fold
273,502fold
519,519fold
521,521fold
514,524fold
542,542fold
541,543fold
548,548fold
552,552fold
565,565fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
568,569fold
574,574fold
578,578fold
583,583fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,588fold
587,589fold
573,590fold
596,596fold
603,603fold
602,605fold
601,606fold
563,607fold
611,611fold
560,613fold
537,614fold
630,630fold
630,631fold
629,632fold
628,633fold
626,635fold
646,646fold
650,650fold
659,659fold
661,661fold
658,663fold
645,664fold
643,665fold
671,671fold
673,673fold
670,674fold
680,680fold
682,682fold
679,683fold
701,701fold
712,712fold
712,712fold
710,713fold
705,715fold
731,732fold
734,734fold
724,738fold
740,740fold
723,741fold
722,743fold
694,745fold
759,759fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
766,767fold
758,770fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
780,781fold
787,787fold
794,795fold
794,796fold
789,797fold
802,802fold
810,810fold
808,811fold
807,812fold
818,818fold
825,825fold
830,830fold
833,833fold
823,840fold
783,842fold
845,847fold
857,857fold
870,870fold
870,871fold
869,872fold
865,874fold
887,888fold
901,901fold
900,902fold
906,906fold
913,913fold
912,914fold
918,918fold
928,930fold
886,934fold
940,941fold
937,942fold
960,960fold
963,963fold
969,969fold
972,972fold
977,977fold
981,981fold
988,988fold
992,992fold
986,993fold
983,995fold
971,998fold
962,1000fold
1005,1005fold
1010,1010fold
1016,1016fold
956,1017fold
1022,1022fold
1021,1026fold
952,1028fold
1047,1047fold
1050,1050fold
1053,1053fold
1056,1056fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1067fold
1066,1069fold
1036,1071fold
1085,1087fold
1091,1091fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1094,1094fold
1099,1099fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1106,1113fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1117,1118fold
1093,1121fold
1081,1122fold
1149,1149fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1155fold
1154,1156fold
1163,1163fold
1163,1163fold
1178,1178fold
1178,1179fold
1183,1183fold
1181,1186fold
1194,1195fold
1194,1195fold
1194,1195fold
1194,1195fold
1194,1195fold
1191,1197fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1202,1202fold
1200,1205fold
1211,1211fold
1210,1213fold
1230,1230fold
1233,1234fold
1259,1259fold
1253,1260fold
1248,1261fold
1241,1262fold
1232,1263fold
1133,1264fold
1268,1268fold
1273,1273fold
1267,1281fold
1316,1316fold
1316,1316fold
1314,1316fold
1311,1317fold
1308,1321fold
1301,1322fold
1289,1323fold
1329,1330fold
1335,1343fold
1335,1343fold
1361,1361fold
1366,1366fold
1371,1371fold
1370,1373fold
1380,1380fold
1379,1382fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1385,1385fold
1394,1394fold
1390,1396fold
1409,1409fold
1418,1418fold
1352,1420fold
1440,1440fold
1444,1444fold
1448,1448fold
1447,1449fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1453,1454fold
1459,1459fold
1464,1464fold
1439,1467fold
1433,1477fold
1432,1479fold
1484,1484fold
1488,1491fold
1496,1496fold
1429,1497fold
1520,1522fold
1526,1526fold
1530,1531fold
1528,1532fold
1538,1538fold
1537,1540fold
1543,1543fold
1542,1545fold
1560,1560fold
1562,1562fold
1564,1567fold
1564,1567fold
1564,1567fold
1564,1567fold
1564,1568fold
1570,1572fold
1549,1573fold
1578,1578fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1581fold
1581,1582fold
1577,1583fold
1587,1587fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1590fold
1590,1591fold
1585,1592fold
1598,1598fold
1598,1598fold
1600,1600fold
1598,1604fold
1608,1609fold
1614,1614fold
1613,1615fold
1625,1625fold
1624,1626fold
1623,1629fold
1631,1633fold
1640,1640fold
1640,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1637,1640fold
1635,1640fold
1646,1646fold
1646,1646fold
1646,1646fold
1652,1652fold
1649,1654fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1659,1660fold
1658,1661fold
1669,1671fold
1608,1672fold
1687,1687fold
1686,1688fold
1674,1689fold
1536,1691fold
1697,1697fold
1696,1701fold
1705,1705fold
1507,1706fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1716,1716fold
1721,1721fold
1724,1724fold
1724,1724fold
1724,1724fold
1723,1724fold
1718,1727fold
1734,1734fold
1739,1740fold
1736,1742fold
1776,1777fold
1782,1782fold
1787,1787fold
1798,1799fold
1804,1804fold
1810,1810fold
1809,1811fold
1815,1815fold
1863,1863fold
1860,1869fold
1871,1872fold
1856,1873fold
1853,1875fold
1845,1877fold
1881,1881fold
1834,1895fold
1833,1897fold
1832,1898fold
1906,1907fold
1905,1908fold
1904,1909fold
1829,1911fold
1930,1932fold
1930,1934fold
1938,1941fold
1944,1944fold
1946,1948fold
1946,1949fold
1946,1949fold
1938,1949fold
1953,1953fold
1953,1953fold
1953,1954fold
1957,1958fold
1957,1959fold
1953,1959fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1963fold
1926,1964fold
1925,1965fold
1917,1966fold
1988,1991fold
1972,1993fold
1971,1995fold
1968,1996fold
2030,2030fold
2033,2034fold
2032,2036fold
2029,2037fold
2028,2038fold
2046,2047fold
2049,2049fold
2046,2050fold
2045,2051fold
2042,2052fold
2061,2061fold
2020,2063fold
2068,2068fold
2076,2076fold
2075,2077fold
1768,2079fold
2090,2090fold
2093,2093fold
2097,2097fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2102,2102fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2105,2105fold
2109,2109fold
2101,2110fold
2092,2112fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2118,2118fold
2123,2123fold
2128,2128fold
2128,2128fold
2127,2128fold
2127,2129fold
2126,2131fold
2135,2135fold
2135,2135fold
2134,2135fold
2134,2136fold
2133,2138fold
2120,2140fold
2153,2153fold
2153,2154fold
2158,2158fold
2162,2162fold
2173,2173fold
2173,2173fold
2171,2173fold
2171,2175fold
2179,2179fold
2177,2182fold
2170,2183fold
2191,2191fold
2152,2193fold
2206,2206fold
2211,2211fold
2204,2213fold
2231,2232fold
2236,2237fold
2244,2244fold
2243,2245fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2252,2252fold
2249,2252fold
2258,2259fold
2270,2274fold
2313,2313fold
2312,2314fold
2318,2319fold
2325,2327fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2329,2331fold
2322,2332fold
2321,2333fold
2335,2335fold
2335,2335fold
2335,2335fold
2335,2335fold
2342,2343fold
2345,2346fold
2341,2347fold
2335,2348fold
2307,2349fold
2254,2350fold
2357,2358fold
2362,2363fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2223,2372fold
2389,2390fold
2392,2393fold
2395,2396fold
2398,2399fold
2401,2402fold
2404,2405fold
2407,2408fold
2410,2411fold
2413,2414fold
2416,2417fold
2419,2420fold
2422,2423fold
2425,2426fold
2428,2429fold
2431,2432fold
2436,2437fold
2439,2440fold
2442,2443fold
2445,2446fold
2448,2448fold
2434,2449fold
2453,2453fold
2457,2457fold
2388,2458fold
2465,2465fold
2472,2472fold
2471,2473fold
2380,2486fold
2491,2491fold
2493,2493fold
2499,2499fold
2504,2504fold
2506,2506fold
2513,2513fold
2513,2513fold
2513,2513fold
2513,2513fold
2517,2517fold
2517,2517fold
2517,2517fold
2517,2517fold
2521,2521fold
2521,2521fold
2521,2521fold
2521,2521fold
2511,2523fold
2511,2523fold
2511,2523fold
2511,2523fold
2535,2535fold
2535,2535fold
2537,2537fold
2537,2537fold
2540,2540fold
2540,2540fold
2539,2540fold
2539,2540fold
2527,2542fold
2527,2542fold
2554,2554fold
2556,2560fold
2563,2585fold
2556,2585fold
2586,2611fold
2614,2619fold
2622,2622fold
2624,2629fold
2624,2629fold
2633,2634fold
2632,2635fold
2638,2638fold
2624,2639fold
2642,2642fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2647,2647fold
2658,2658fold
2658,2658fold
2657,2658fold
2657,2658fold
2654,2658fold
2654,2660fold
2663,2663fold
2662,2666fold
2653,2667fold
2653,2667fold
2669,2671fold
2676,2677fold
2674,2679fold
2669,2680fold
2686,2688fold
2686,2688fold
2694,2694fold
2694,2694fold
2693,2694fold
2693,2694fold
2690,2694fold
2696,2696fold
2700,2700fold
2690,2701fold
2710,2710fold
2703,2713fold
2686,2714fold
2718,2719fold
2682,2720fold
2682,2720fold
2682,2720fold
2682,2720fold
2614,2721fold
2614,2721fold
2613,2722fold
2613,2722fold
2556,2726fold
2737,2737fold
2744,2744fold
2751,2751fold
2753,2753fold
2750,2754fold
2759,2759fold
2763,2764fold
2769,2769fold
2775,2775fold
2780,2780fold
2773,2781fold
2739,2783fold
2793,2794fold
2797,2797fold
2799,2800fold
2804,2804fold
2806,2806fold
2789,2812fold
2842,2843fold
2850,2850fold
2852,2852fold
2852,2853fold
2850,2855fold
2849,2856fold
2861,2861fold
2863,2863fold
2860,2865fold
2873,2873fold
2871,2873fold
2875,2875fold
2875,2875fold
2875,2875fold
2871,2876fold
2870,2877fold
2847,2878fold
2883,2883fold
2890,2891fold
2896,2897fold
2893,2898fold
2903,2904fold
2908,2909fold
2914,2915fold
2880,2916fold
2926,2928fold
2926,2929fold
2931,2931fold
2923,2932fold
2936,2937fold
2939,2946fold
2955,2956fold
2953,2957fold
2964,2965fold
2972,2972fold
2983,2984fold
2986,2987fold
2981,2988fold
2990,2990fold
2994,2994fold
2994,2994fold
2994,2994fold
2994,2994fold
2994,2994fold
3003,3003fold
2999,3004fold
3011,3011fold
3006,3012fold
2997,3013fold
3015,3015fold
2978,3016fold
3023,3026fold
3032,3032fold
3039,3042fold
3030,3043fold
3053,3055fold
3053,3056fold
3052,3057fold
3066,3066fold
3068,3068fold
3061,3069fold
3049,3070fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3076,3076fold
3081,3081fold
3083,3083fold
3078,3084fold
3075,3085fold
3090,3092fold
3094,3095fold
3100,3100fold
2972,3101fold
3106,3107fold
2963,3108fold
3117,3117fold
3113,3119fold
2820,3120fold
3125,3125fold
3135,3136fold
3138,3140fold
3123,3141fold
3156,3156fold
3155,3157fold
3154,3158fold
3153,3159fold
3166,3166fold
3170,3170fold
3169,3171fold
3168,3173fold
3187,3187fold
3191,3192fold
3196,3197fold
3203,3203fold
3209,3209fold
3215,3215fold
3215,3215fold
3214,3215fold
3214,3215fold
3213,3215fold
3213,3217fold
3208,3218fold
3201,3219fold
3224,3224fold
3229,3229fold
3184,3236fold
3252,3253fold
3252,3254fold
3258,3259fold
3263,3264fold
3269,3269fold
3276,3276fold
3272,3279fold
3285,3285fold
3285,3285fold
3282,3285fold
3282,3291fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3294,3294fold
3268,3294fold
3243,3298fold
3313,3313fold
3309,3315fold
3330,3331fold
3335,3336fold
3342,3342fold
3341,3343fold
3349,3349fold
3349,3349fold
3349,3349fold
3348,3349fold
3356,3357fold
3362,3362fold
3322,3364fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3372,3375fold
3388,3389fold
3391,3391fold
3394,3394fold
3399,3400fold
3402,3402fold
3405,3405fold
3409,3410fold
3412,3413fold
3416,3417fold
3419,3420fold
3377,3422fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3430,3433fold
3444,3445fold
3447,3447fold
3452,3453fold
3455,3455fold
3450,3456fold
3458,3458fold
3462,3462fold
3465,3465fold
3468,3468fold
3442,3476fold
3435,3479fold
3497,3497fold
3502,3502fold
3488,3509fold
75
normal! zo
75
normal! zc
75
normal! zc
81
normal! zo
81
normal! zc
81
normal! zc
87
normal! zo
87
normal! zc
87
normal! zc
102
normal! zo
103
normal! zo
106
normal! zo
110
normal! zc
106
normal! zc
103
normal! zc
102
normal! zc
123
normal! zo
124
normal! zo
128
normal! zo
129
normal! zc
128
normal! zc
134
normal! zo
136
normal! zc
134
normal! zc
124
normal! zc
142
normal! zc
123
normal! zc
157
normal! zo
158
normal! zc
164
normal! zo
165
normal! zc
164
normal! zc
157
normal! zc
180
normal! zo
181
normal! zo
182
normal! zc
181
normal! zc
180
normal! zc
196
normal! zo
198
normal! zo
199
normal! zc
198
normal! zc
196
normal! zc
213
normal! zo
215
normal! zo
216
normal! zc
215
normal! zc
213
normal! zc
228
normal! zo
229
normal! zo
231
normal! zo
233
normal! zc
231
normal! zc
229
normal! zc
228
normal! zc
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zo
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
246
normal! zc
248
normal! zo
250
normal! zo
252
normal! zc
250
normal! zc
248
normal! zc
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zo
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
271
normal! zc
273
normal! zo
274
normal! zc
285
normal! zc
289
normal! zc
293
normal! zc
306
normal! zo
310
normal! zo
310
normal! zo
313
normal! zo
313
normal! zc
313
normal! zc
310
normal! zc
321
normal! zo
322
normal! zo
323
normal! zc
325
normal! zo
326
normal! zo
326
normal! zc
326
normal! zc
325
normal! zc
322
normal! zc
321
normal! zc
310
normal! zc
336
normal! zc
355
normal! zo
358
normal! zo
359
normal! zc
358
normal! zc
364
normal! zo
368
normal! zo
369
normal! zo
372
normal! zo
374
normal! zo
374
normal! zc
374
normal! zc
382
normal! zc
372
normal! zc
386
normal! zc
369
normal! zc
393
normal! zo
396
normal! zo
400
normal! zo
400
normal! zc
400
normal! zc
407
normal! zc
396
normal! zc
411
normal! zc
393
normal! zc
419
normal! zo
420
normal! zc
419
normal! zc
368
normal! zc
425
normal! zo
426
normal! zc
430
normal! zc
425
normal! zc
436
normal! zc
364
normal! zc
355
normal! zc
448
normal! zo
448
normal! zc
451
normal! zo
452
normal! zc
451
normal! zc
448
normal! zc
459
normal! zc
306
normal! zc
469
normal! zo
472
normal! zo
473
normal! zc
472
normal! zc
478
normal! zo
483
normal! zc
485
normal! zc
478
normal! zc
488
normal! zc
469
normal! zc
495
normal! zc
273
normal! zc
514
normal! zo
519
normal! zc
521
normal! zc
514
normal! zc
537
normal! zo
541
normal! zo
542
normal! zc
541
normal! zc
548
normal! zc
552
normal! zc
560
normal! zo
563
normal! zo
565
normal! zc
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zo
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
568
normal! zc
573
normal! zo
574
normal! zc
578
normal! zc
583
normal! zc
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zo
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
587
normal! zc
573
normal! zc
596
normal! zc
601
normal! zo
602
normal! zo
603
normal! zc
602
normal! zc
601
normal! zc
563
normal! zc
611
normal! zc
560
normal! zc
537
normal! zc
626
normal! zo
628
normal! zo
629
normal! zo
630
normal! zo
630
normal! zc
630
normal! zc
629
normal! zc
628
normal! zc
626
normal! zc
643
normal! zo
645
normal! zo
646
normal! zc
650
normal! zc
658
normal! zo
659
normal! zc
661
normal! zc
658
normal! zc
670
normal! zo
671
normal! zc
673
normal! zc
670
normal! zc
679
normal! zo
680
normal! zc
682
normal! zc
679
normal! zc
694
normal! zo
701
normal! zc
705
normal! zo
710
normal! zo
712
normal! zo
712
normal! zc
712
normal! zc
710
normal! zc
705
normal! zc
722
normal! zo
723
normal! zo
724
normal! zo
731
normal! zc
734
normal! zc
724
normal! zc
740
normal! zc
723
normal! zc
722
normal! zc
694
normal! zc
758
normal! zo
759
normal! zc
766
normal! zo
766
normal! zo
766
normal! zo
766
normal! zo
766
normal! zo
766
normal! zo
766
normal! zo
766
normal! zo
766
normal! zc
766
normal! zc
766
normal! zc
766
normal! zc
766
normal! zc
766
normal! zc
766
normal! zc
766
normal! zc
766
normal! zc
758
normal! zc
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zo
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
780
normal! zc
783
normal! zo
787
normal! zc
789
normal! zo
794
normal! zo
794
normal! zc
794
normal! zc
789
normal! zc
802
normal! zc
807
normal! zo
808
normal! zo
810
normal! zc
808
normal! zc
807
normal! zc
818
normal! zc
823
normal! zo
825
normal! zc
830
normal! zc
833
normal! zc
823
normal! zc
783
normal! zc
845
normal! zc
857
normal! zc
865
normal! zo
869
normal! zo
870
normal! zo
870
normal! zc
870
normal! zc
869
normal! zc
865
normal! zc
886
normal! zo
887
normal! zc
900
normal! zo
901
normal! zc
900
normal! zc
906
normal! zc
912
normal! zo
913
normal! zc
912
normal! zc
918
normal! zc
928
normal! zc
886
normal! zc
937
normal! zo
940
normal! zc
937
normal! zc
952
normal! zo
956
normal! zo
960
normal! zc
962
normal! zo
963
normal! zc
969
normal! zc
971
normal! zo
972
normal! zc
977
normal! zc
981
normal! zc
983
normal! zo
986
normal! zo
988
normal! zc
992
normal! zc
986
normal! zc
983
normal! zc
971
normal! zc
962
normal! zc
1005
normal! zc
1010
normal! zc
1016
normal! zc
956
normal! zc
1021
normal! zo
1022
normal! zc
1021
normal! zc
952
normal! zc
1036
normal! zo
1047
normal! zc
1050
normal! zc
1053
normal! zc
1056
normal! zc
1066
normal! zo
1066
normal! zo
1066
normal! zo
1066
normal! zo
1066
normal! zo
1066
normal! zc
1066
normal! zc
1066
normal! zc
1066
normal! zc
1066
normal! zc
1066
normal! zc
1036
normal! zc
1081
normal! zo
1085
normal! zc
1091
normal! zc
1093
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zo
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1094
normal! zc
1099
normal! zc
1106
normal! zo
1106
normal! zo
1106
normal! zo
1106
normal! zo
1106
normal! zo
1106
normal! zc
1106
normal! zc
1106
normal! zc
1106
normal! zc
1106
normal! zc
1106
normal! zc
1117
normal! zo
1117
normal! zo
1117
normal! zo
1117
normal! zo
1117
normal! zo
1117
normal! zo
1117
normal! zo
1117
normal! zc
1117
normal! zc
1117
normal! zc
1117
normal! zc
1117
normal! zc
1117
normal! zc
1117
normal! zc
1117
normal! zc
1093
normal! zc
1081
normal! zc
1133
normal! zo
1149
normal! zc
1154
normal! zo
1154
normal! zo
1154
normal! zo
1154
normal! zo
1154
normal! zo
1154
normal! zo
1154
normal! zc
1154
normal! zc
1154
normal! zc
1154
normal! zc
1154
normal! zc
1154
normal! zc
1154
normal! zc
1163
normal! zo
1163
normal! zc
1163
normal! zc
1178
normal! zo
1178
normal! zc
1178
normal! zc
1181
normal! zo
1183
normal! zc
1181
normal! zc
1191
normal! zo
1194
normal! zo
1194
normal! zo
1194
normal! zo
1194
normal! zo
1194
normal! zc
1194
normal! zc
1194
normal! zc
1194
normal! zc
1194
normal! zc
1191
normal! zc
1200
normal! zo
1202
normal! zo
1202
normal! zo
1202
normal! zo
1202
normal! zo
1202
normal! zo
1202
normal! zc
1202
normal! zc
1202
normal! zc
1202
normal! zc
1202
normal! zc
1202
normal! zc
1200
normal! zc
1210
normal! zo
1211
normal! zc
1210
normal! zc
1230
normal! zc
1232
normal! zo
1233
normal! zc
1241
normal! zo
1248
normal! zo
1253
normal! zo
1259
normal! zc
1253
normal! zc
1248
normal! zc
1241
normal! zc
1232
normal! zc
1133
normal! zc
1267
normal! zo
1268
normal! zc
1273
normal! zc
1267
normal! zc
1289
normal! zo
1301
normal! zo
1308
normal! zo
1311
normal! zo
1314
normal! zo
1316
normal! zo
1316
normal! zc
1316
normal! zc
1314
normal! zc
1311
normal! zc
1308
normal! zc
1301
normal! zc
1289
normal! zc
1329
normal! zc
1335
normal! zo
1335
normal! zc
1335
normal! zc
1352
normal! zo
1361
normal! zc
1366
normal! zc
1370
normal! zo
1371
normal! zc
1370
normal! zc
1379
normal! zo
1380
normal! zc
1379
normal! zc
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zo
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1385
normal! zc
1390
normal! zo
1394
normal! zc
1390
normal! zc
1409
normal! zc
1418
normal! zc
1352
normal! zc
1429
normal! zo
1432
normal! zo
1433
normal! zo
1439
normal! zo
1440
normal! zc
1444
normal! zc
1447
normal! zo
1448
normal! zc
1447
normal! zc
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zo
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1453
normal! zc
1459
normal! zc
1464
normal! zc
1439
normal! zc
1433
normal! zc
1432
normal! zc
1484
normal! zc
1488
normal! zc
1496
normal! zc
1429
normal! zc
1507
normal! zo
1520
normal! zc
1526
normal! zc
1528
normal! zo
1530
normal! zc
1528
normal! zc
1536
normal! zo
1537
normal! zo
1538
normal! zc
1537
normal! zc
1542
normal! zo
1543
normal! zc
1542
normal! zc
1549
normal! zo
1560
normal! zc
1562
normal! zc
1564
normal! zo
1564
normal! zo
1564
normal! zo
1564
normal! zo
1564
normal! zc
1564
normal! zc
1564
normal! zc
1564
normal! zc
1564
normal! zc
1570
normal! zc
1549
normal! zc
1577
normal! zo
1578
normal! zc
1581
normal! zo
1581
normal! zo
1581
normal! zo
1581
normal! zo
1581
normal! zo
1581
normal! zo
1581
normal! zo
1581
normal! zo
1581
normal! zc
1581
normal! zc
1581
normal! zc
1581
normal! zc
1581
normal! zc
1581
normal! zc
1581
normal! zc
1581
normal! zc
1581
normal! zc
1577
normal! zc
1585
normal! zo
1587
normal! zc
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zo
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1590
normal! zc
1585
normal! zc
1598
normal! zo
1598
normal! zo
1598
normal! zc
1598
normal! zc
1600
normal! zc
1598
normal! zc
1608
normal! zo
1608
normal! zc
1613
normal! zo
1614
normal! zc
1613
normal! zc
1623
normal! zo
1624
normal! zo
1625
normal! zc
1624
normal! zc
1623
normal! zc
1631
normal! zc
1635
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1637
normal! zo
1640
normal! zo
1640
normal! zc
1640
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1637
normal! zc
1635
normal! zc
1646
normal! zo
1646
normal! zo
1646
normal! zc
1646
normal! zc
1646
normal! zc
1649
normal! zo
1652
normal! zc
1649
normal! zc
1658
normal! zo
1659
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zo
1660
normal! zc
1660
normal! zc
1660
normal! zc
1660
normal! zc
1660
normal! zc
1660
normal! zc
1660
normal! zc
1660
normal! zc
1660
normal! zc
1659
normal! zc
1658
normal! zc
1669
normal! zc
1608
normal! zc
1674
normal! zo
1686
normal! zo
1687
normal! zc
1686
normal! zc
1674
normal! zc
1536
normal! zc
1696
normal! zo
1697
normal! zc
1696
normal! zc
1705
normal! zc
1507
normal! zc
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zo
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1716
normal! zc
1718
normal! zo
1721
normal! zc
1723
normal! zo
1724
normal! zo
1724
normal! zo
1724
normal! zc
1724
normal! zc
1724
normal! zc
1723
normal! zc
1718
normal! zc
1734
normal! zc
1736
normal! zo
1739
normal! zc
1736
normal! zc
1768
normal! zo
1776
normal! zc
1782
normal! zc
1787
normal! zc
1798
normal! zc
1804
normal! zc
1809
normal! zo
1810
normal! zc
1809
normal! zc
1815
normal! zc
1829
normal! zo
1832
normal! zo
1833
normal! zo
1834
normal! zo
1845
normal! zo
1853
normal! zo
1856
normal! zo
1860
normal! zo
1863
normal! zc
1860
normal! zc
1871
normal! zc
1856
normal! zc
1853
normal! zc
1845
normal! zc
1881
normal! zc
1834
normal! zc
1833
normal! zc
1832
normal! zc
1904
normal! zo
1905
normal! zo
1906
normal! zc
1905
normal! zc
1904
normal! zc
1829
normal! zc
1917
normal! zo
1925
normal! zo
1926
normal! zo
1930
normal! zo
1930
normal! zc
1938
normal! zo
1938
normal! zc
1944
normal! zc
1946
normal! zo
1946
normal! zo
1946
normal! zc
1946
normal! zc
1946
normal! zc
1938
normal! zc
1953
normal! zo
1953
normal! zo
1953
normal! zo
1953
normal! zc
1953
normal! zc
1953
normal! zc
1957
normal! zo
1957
normal! zc
1957
normal! zc
1953
normal! zc
1961
normal! zo
1961
normal! zo
1961
normal! zo
1961
normal! zo
1961
normal! zc
1961
normal! zc
1961
normal! zc
1961
normal! zc
1961
normal! zc
1968
normal! zo
1971
normal! zo
1972
normal! zo
1988
normal! zc
1972
normal! zc
1971
normal! zc
1968
normal! zc
2020
normal! zo
2028
normal! zo
2029
normal! zo
2030
normal! zc
2032
normal! zo
2033
normal! zc
2032
normal! zc
2029
normal! zc
2028
normal! zc
2042
normal! zo
2045
normal! zo
2046
normal! zo
2046
normal! zc
2049
normal! zc
2046
normal! zc
2045
normal! zc
2042
normal! zc
2061
normal! zc
2020
normal! zc
2068
normal! zc
2075
normal! zo
2076
normal! zc
2075
normal! zc
2090
normal! zc
2092
normal! zo
2093
normal! zc
2097
normal! zc
2101
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zo
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2102
normal! zc
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zo
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2105
normal! zc
2109
normal! zc
2101
normal! zc
2092
normal! zc
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zo
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2118
normal! zc
2120
normal! zo
2123
normal! zc
2126
normal! zo
2127
normal! zo
2127
normal! zo
2128
normal! zo
2128
normal! zc
2128
normal! zc
2127
normal! zc
2127
normal! zc
2126
normal! zc
2133
normal! zo
2134
normal! zo
2134
normal! zo
2135
normal! zo
2135
normal! zc
2135
normal! zc
2134
normal! zc
2134
normal! zc
2133
normal! zc
2120
normal! zc
2152
normal! zo
2153
normal! zo
2153
normal! zc
2153
normal! zc
2158
normal! zc
2162
normal! zc
2170
normal! zo
2171
normal! zo
2171
normal! zo
2173
normal! zo
2173
normal! zc
2173
normal! zc
2171
normal! zc
2171
normal! zc
2177
normal! zo
2179
normal! zc
2177
normal! zc
2170
normal! zc
2191
normal! zc
2152
normal! zc
2204
normal! zo
2206
normal! zc
2211
normal! zc
2223
normal! zo
2231
normal! zc
2236
normal! zc
2243
normal! zo
2244
normal! zc
2243
normal! zc
2249
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zo
2252
normal! zc
2252
normal! zc
2252
normal! zc
2252
normal! zc
2252
normal! zc
2252
normal! zc
2252
normal! zc
2252
normal! zc
2252
normal! zc
2249
normal! zc
2254
normal! zo
2258
normal! zc
2270
normal! zc
2307
normal! zo
2312
normal! zo
2313
normal! zc
2312
normal! zc
2318
normal! zc
2321
normal! zo
2322
normal! zo
2325
normal! zc
2329
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zo
2331
normal! zc
2331
normal! zc
2331
normal! zc
2331
normal! zc
2331
normal! zc
2331
normal! zc
2331
normal! zc
2331
normal! zc
2331
normal! zc
2329
normal! zc
2322
normal! zc
2321
normal! zc
2335
normal! zo
2335
normal! zo
2335
normal! zo
2335
normal! zo
2335
normal! zc
2335
normal! zc
2335
normal! zc
2335
normal! zc
2341
normal! zo
2342
normal! zc
2345
normal! zc
2341
normal! zc
2335
normal! zc
2307
normal! zc
2357
normal! zc
2362
normal! zc
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zo
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2372
normal! zc
2380
normal! zo
2388
normal! zo
2389
normal! zc
2392
normal! zc
2395
normal! zc
2398
normal! zc
2401
normal! zc
2404
normal! zc
2407
normal! zc
2410
normal! zc
2413
normal! zc
2416
normal! zc
2419
normal! zc
2422
normal! zc
2425
normal! zc
2428
normal! zc
2431
normal! zc
2434
normal! zo
2436
normal! zc
2439
normal! zc
2442
normal! zc
2445
normal! zc
2448
normal! zc
2434
normal! zc
2453
normal! zc
2457
normal! zc
2388
normal! zc
2465
normal! zc
2471
normal! zo
2472
normal! zc
2471
normal! zc
2380
normal! zc
2491
normal! zc
2493
normal! zc
2499
normal! zc
2504
normal! zc
2506
normal! zc
2511
normal! zo
2511
normal! zo
2511
normal! zo
2511
normal! zo
2513
normal! zo
2513
normal! zo
2513
normal! zo
2513
normal! zc
2513
normal! zc
2513
normal! zc
2513
normal! zc
2517
normal! zo
2517
normal! zo
2517
normal! zo
2517
normal! zc
2517
normal! zc
2517
normal! zc
2517
normal! zc
2521
normal! zo
2521
normal! zo
2521
normal! zo
2521
normal! zc
2521
normal! zc
2521
normal! zc
2521
normal! zc
2511
normal! zc
2511
normal! zc
2511
normal! zc
2511
normal! zc
2527
normal! zo
2527
normal! zo
2535
normal! zo
2535
normal! zc
2535
normal! zc
2537
normal! zo
2537
normal! zc
2537
normal! zc
2539
normal! zo
2539
normal! zo
2540
normal! zo
2540
normal! zc
2540
normal! zc
2539
normal! zc
2539
normal! zc
2527
normal! zc
2527
normal! zc
2554
normal! zc
2556
normal! zo
2556
normal! zo
2556
normal! zc
2563
normal! zc
2586
normal! zc
2613
normal! zo
2613
normal! zo
2614
normal! zo
2614
normal! zo
2614
normal! zc
2624
normal! zo
2624
normal! zo
2624
normal! zc
2632
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zo
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2647
normal! zc
2653
normal! zo
2653
normal! zo
2654
normal! zo
2654
normal! zo
2657
normal! zo
2657
normal! zo
2658
normal! zo
2658
normal! zc
2658
normal! zc
2657
normal! zc
2657
normal! zc
2654
normal! zc
2654
normal! zc
2662
normal! zo
2663
normal! zc
2662
normal! zc
2653
normal! zc
2653
normal! zc
2669
normal! zo
2669
normal! zc
2674
normal! zo
2676
normal! zc
2674
normal! zc
2669
normal! zc
2682
normal! zo
2682
normal! zo
2682
normal! zo
2682
normal! zo
2686
normal! zo
2686
normal! zo
2686
normal! zc
2686
normal! zc
2690
normal! zo
2690
normal! zo
2693
normal! zo
2693
normal! zo
2694
normal! zo
2694
normal! zc
2696
normal! zc
2700
normal! zc
2703
normal! zo
2710
normal! zc
2718
normal! zc
2682
normal! zc
2737
normal! zc
2739
normal! zo
2744
normal! zc
2750
normal! zo
2751
normal! zc
2753
normal! zc
2750
normal! zc
2759
normal! zc
2763
normal! zc
2769
normal! zc
2773
normal! zo
2775
normal! zc
2780
normal! zc
2773
normal! zc
2739
normal! zc
2789
normal! zo
2793
normal! zc
2797
normal! zc
2799
normal! zc
2804
normal! zc
2806
normal! zc
2789
normal! zc
2820
normal! zo
2842
normal! zc
2847
normal! zo
2849
normal! zo
2850
normal! zo
2850
normal! zc
2852
normal! zo
2852
normal! zc
2852
normal! zc
2850
normal! zc
2849
normal! zc
2860
normal! zo
2861
normal! zc
2863
normal! zc
2860
normal! zc
2870
normal! zo
2871
normal! zo
2871
normal! zo
2873
normal! zc
2871
normal! zc
2875
normal! zo
2875
normal! zo
2875
normal! zc
2875
normal! zc
2875
normal! zc
2871
normal! zc
2870
normal! zc
2847
normal! zc
2880
normal! zo
2883
normal! zc
2890
normal! zc
2893
normal! zo
2896
normal! zc
2893
normal! zc
2903
normal! zc
2908
normal! zc
2914
normal! zc
2880
normal! zc
2923
normal! zo
2926
normal! zo
2926
normal! zc
2931
normal! zc
2936
normal! zc
2939
normal! zc
2953
normal! zo
2955
normal! zc
2953
normal! zc
2963
normal! zo
2964
normal! zc
2972
normal! zo
2972
normal! zc
2978
normal! zo
2981
normal! zo
2983
normal! zc
2986
normal! zc
2981
normal! zc
2990
normal! zc
2994
normal! zo
2994
normal! zo
2994
normal! zo
2994
normal! zo
2994
normal! zc
2994
normal! zc
2994
normal! zc
2994
normal! zc
2994
normal! zc
2997
normal! zo
2999
normal! zo
3003
normal! zc
2999
normal! zc
3006
normal! zo
3011
normal! zc
3006
normal! zc
2997
normal! zc
3015
normal! zc
2978
normal! zc
3023
normal! zc
3030
normal! zo
3032
normal! zc
3039
normal! zc
3030
normal! zc
3049
normal! zo
3052
normal! zo
3053
normal! zo
3053
normal! zc
3053
normal! zc
3052
normal! zc
3061
normal! zo
3066
normal! zc
3068
normal! zc
3061
normal! zc
3049
normal! zc
3075
normal! zo
3076
normal! zo
3076
normal! zo
3076
normal! zo
3076
normal! zo
3076
normal! zo
3076
normal! zc
3076
normal! zc
3076
normal! zc
3076
normal! zc
3076
normal! zc
3076
normal! zc
3078
normal! zo
3081
normal! zc
3083
normal! zc
3078
normal! zc
3075
normal! zc
3090
normal! zc
3094
normal! zc
3100
normal! zc
2972
normal! zc
3106
normal! zc
2963
normal! zc
3113
normal! zo
3117
normal! zc
3113
normal! zc
3123
normal! zo
3125
normal! zc
3135
normal! zc
3138
normal! zc
3123
normal! zc
3153
normal! zo
3154
normal! zo
3155
normal! zo
3156
normal! zc
3155
normal! zc
3154
normal! zc
3153
normal! zc
3166
normal! zc
3168
normal! zo
3169
normal! zo
3170
normal! zc
3169
normal! zc
3168
normal! zc
3184
normal! zo
3187
normal! zc
3191
normal! zc
3196
normal! zc
3201
normal! zo
3203
normal! zc
3208
normal! zo
3209
normal! zc
3213
normal! zo
3213
normal! zo
3214
normal! zo
3214
normal! zo
3215
normal! zo
3215
normal! zc
3215
normal! zc
3214
normal! zc
3214
normal! zc
3213
normal! zc
3213
normal! zc
3208
normal! zc
3201
normal! zc
3224
normal! zc
3229
normal! zc
3184
normal! zc
3243
normal! zo
3252
normal! zo
3252
normal! zc
3252
normal! zc
3258
normal! zc
3263
normal! zc
3268
normal! zo
3269
normal! zc
3272
normal! zo
3276
normal! zc
3272
normal! zc
3282
normal! zo
3282
normal! zo
3285
normal! zo
3285
normal! zc
3285
normal! zc
3282
normal! zc
3282
normal! zc
3294
normal! zo
3294
normal! zo
3294
normal! zo
3294
normal! zo
3294
normal! zo
3294
normal! zc
3294
normal! zc
3294
normal! zc
3294
normal! zc
3294
normal! zc
3294
normal! zc
3268
normal! zc
3243
normal! zc
3309
normal! zo
3313
normal! zc
3309
normal! zc
3322
normal! zo
3330
normal! zc
3335
normal! zc
3341
normal! zo
3342
normal! zc
3341
normal! zc
3348
normal! zo
3349
normal! zo
3349
normal! zo
3349
normal! zc
3349
normal! zc
3349
normal! zc
3348
normal! zc
3356
normal! zc
3362
normal! zc
3322
normal! zc
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zo
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3372
normal! zc
3377
normal! zo
3388
normal! zc
3391
normal! zc
3394
normal! zc
3399
normal! zc
3402
normal! zc
3405
normal! zc
3409
normal! zc
3412
normal! zc
3416
normal! zc
3419
normal! zc
3377
normal! zc
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zo
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3430
normal! zc
3435
normal! zo
3442
normal! zo
3444
normal! zc
3447
normal! zc
3450
normal! zo
3452
normal! zc
3455
normal! zc
3450
normal! zc
3458
normal! zc
3462
normal! zc
3465
normal! zc
3468
normal! zc
3442
normal! zc
3435
normal! zc
3488
normal! zo
3497
normal! zc
3502
normal! zc
3488
normal! zc
let s:l = 2630 - ((78 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2630
normal! 09|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 108 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 87 + 136) / 273)
tabedit fugitive:///home/zom/projects/neovim/.git//f0ace6d419380907b719edd2ea1d2256e92beb84/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 196 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=15
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
1,508fold
522,647fold
661,1054fold
1067,1747fold
1761,1772fold
1786,1794fold
1807,1854fold
1868,1983fold
1997,2036fold
2050,2241fold
2254,2283fold
2307,2322fold
2335,2363fold
2376,2571fold
2586,3132fold
3145,3158fold
let s:l = 1801 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1801
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=19
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1,508fold
523,648fold
662,1055fold
1071,1751fold
1773,1784fold
1787,1787fold
1798,1799fold
1804,1804fold
1810,1810fold
1809,1811fold
1815,1815fold
1785,1827fold
1863,1863fold
1860,1869fold
1871,1872fold
1856,1873fold
1853,1875fold
1845,1877fold
1881,1881fold
1834,1895fold
1833,1897fold
1832,1898fold
1906,1907fold
1905,1908fold
1904,1909fold
1829,1911fold
1829,1911fold
1913,1915fold
1785,1915fold
1785,1915fold
1785,1915fold
1768,1915fold
1768,1915fold
1768,1915fold
1768,1915fold
1768,1915fold
1768,1915fold
1917,1923fold
1930,1932fold
1930,1934fold
1938,1941fold
1944,1944fold
1946,1948fold
1946,1949fold
1946,1949fold
1938,1949fold
1953,1953fold
1953,1953fold
1953,1954fold
1957,1958fold
1957,1959fold
1953,1959fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1962fold
1961,1963fold
1926,1964fold
1925,1965fold
1925,1965fold
1917,1966fold
1917,1966fold
1917,1966fold
1917,1966fold
1917,1966fold
1917,1966fold
1972,1986fold
1988,1991fold
1972,1993fold
1971,1995fold
1968,1996fold
1968,1997fold
1968,1997fold
1968,1997fold
1968,1997fold
1968,1997fold
1999,2018fold
1999,2018fold
1999,2018fold
1999,2018fold
2030,2030fold
2033,2034fold
2032,2036fold
2029,2037fold
2028,2038fold
2046,2047fold
2049,2049fold
2046,2050fold
2045,2051fold
2042,2052fold
2061,2061fold
2020,2063fold
2068,2068fold
2020,2072fold
2020,2072fold
2076,2076fold
2075,2077fold
2086,2201fold
2215,2254fold
2258,2259fold
2270,2274fold
2313,2313fold
2312,2314fold
2318,2319fold
2325,2327fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2331,2331fold
2329,2331fold
2322,2332fold
2321,2333fold
2335,2335fold
2335,2335fold
2335,2335fold
2335,2335fold
2342,2343fold
2345,2346fold
2341,2347fold
2335,2348fold
2307,2349fold
2255,2350fold
2357,2358fold
2362,2363fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2372,2372fold
2255,2502fold
2551,2580fold
2605,2618fold
2674,2674fold
2674,2674fold
2673,2674fold
2673,2674fold
2670,2674fold
2670,2676fold
2670,2677fold
2679,2679fold
2678,2682fold
2686,2688fold
2686,2688fold
2694,2694fold
2694,2694fold
2693,2694fold
2693,2694fold
2690,2694fold
2696,2696fold
2700,2700fold
2690,2701fold
2710,2710fold
2703,2713fold
2686,2714fold
2718,2719fold
2678,2720fold
2638,2720fold
2638,2722fold
2638,2722fold
2638,2722fold
2725,2920fold
2935,3481fold
3497,3510fold
1917
normal! zo
1917
normal! zo
1917
normal! zo
1917
normal! zo
1917
normal! zo
1917
normal! zo
1968
normal! zo
1968
normal! zo
1968
normal! zo
1968
normal! zo
1968
normal! zo
1968
normal! zo
let s:l = 1919 - ((16 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1919
normal! 05|
lcd ~/projects/neovim
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 196 + 136) / 273)
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("term://.//66398:/bin/bash") | buffer term://.//66398:/bin/bash | else | edit term://.//66398:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 63 - ((50 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
63
normal! 039|
lcd ~/projects/neovim
tabnext 10
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
