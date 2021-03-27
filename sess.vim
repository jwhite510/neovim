let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/neovim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 README.md
badd +3134 term://.//860308:/bin/bash
badd +1 build/bin
badd +1 src/nvim/diff.c
badd +2672 src/nvim/ex_cmds.c
badd +1560 src/nvim/buffer.c
badd +1 ~/projects/alg/AddString/main.cpp
badd +230 src/nvim/ex_eval.c
badd +229 term://.//860322:/bin/bash
badd +28 term://.//860342:/bin/bash
badd +1 term://.//860332:/bin/bash
badd +1 ~/.local/share/nvim/log
badd +1 term://.//860292:/bin/bash
badd +1 src/nvim/screen.c
badd +108 CMakeLists.txt
badd +169 src/nvim/buffer_defs.h
badd +1168 src/nvim/move.c
badd +15 term://.//854243:/bin/bash
badd +6 term://.//854258:/bin/bash
badd +401 src/nvim/syntax.c
badd +866 src/nvim/fold.c
badd +20 src/nvim/screen.h
badd +1 src/nvim/buffer_defs.cpp
badd +93 src/nvim/vim.h
badd +75 ci/common/suite.sh
badd +235 scripts/gen_vimdoc.py
badd +312 src/nvim/xdiff/xdiffi.c
badd +114 src/nvim/xdiff/xdiff.h
badd +62 src/nvim/xdiff/xtypes.h
badd +384 src/nvim/xdiff/xpatience.c
badd +279 src/nvim/xdiff/xprepare.c
badd +0 term://.//862687:/bin/bash
badd +59 src/nvim/xdiff/xdiffi.h
argglobal
%argdel
$argadd ./
set stal=2
edit README.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 126 + 136) / 273)
exe '2resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 126 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 146 + 136) / 273)
argglobal
if bufexists("term://.//860292:/bin/bash") | buffer term://.//860292:/bin/bash | else | edit term://.//860292:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 453 - ((35 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
453
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//860308:/bin/bash") | buffer term://.//860308:/bin/bash | else | edit term://.//860308:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 14 - ((13 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 80 - ((25 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
80
normal! 027|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 126 + 136) / 273)
exe '2resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 126 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 146 + 136) / 273)
tabnew
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 136 + 136) / 273)
exe '2resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 136 + 136) / 273)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 136 + 136) / 273)
argglobal
if bufexists("term://.//860322:/bin/bash") | buffer term://.//860322:/bin/bash | else | edit term://.//860322:/bin/bash | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 51 - ((50 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//860332:/bin/bash") | buffer term://.//860332:/bin/bash | else | edit term://.//860332:/bin/bash | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 13 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//860342:/bin/bash") | buffer term://.//860342:/bin/bash | else | edit term://.//860342:/bin/bash | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 25 - ((24 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 136 + 136) / 273)
exe '2resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 136 + 136) / 273)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 136 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 7 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 91 + 136) / 273)
exe '2resize ' . ((&lines * 7 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 273)
exe '3resize ' . ((&lines * 32 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 273)
exe '4resize ' . ((&lines * 32 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 91 + 136) / 273)
exe '5resize ' . ((&lines * 10 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 182 + 136) / 273)
exe 'vert 6resize ' . ((&columns * 90 + 136) / 273)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 640 - ((1 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
640
normal! 06|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/alg/AddString/main.cpp") | buffer ~/projects/alg/AddString/main.cpp | else | edit ~/projects/alg/AddString/main.cpp | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
let s:l = 157 - ((8 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
157
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1106 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1106
normal! 018|
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
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 154 - ((21 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
154
normal! 06|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 7 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 91 + 136) / 273)
exe '2resize ' . ((&lines * 7 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 273)
exe '3resize ' . ((&lines * 32 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 273)
exe '4resize ' . ((&lines * 32 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 91 + 136) / 273)
exe '5resize ' . ((&lines * 10 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 182 + 136) / 273)
exe 'vert 6resize ' . ((&columns * 90 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe '2resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 196 + 136) / 273)
exe '3resize ' . ((&lines * 14 + 27) / 54)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 647 - ((17 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
647
normal! 06|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/screen.c") | buffer ~/projects/neovim/src/nvim/screen.c | else | edit ~/projects/neovim/src/nvim/screen.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 202 - ((14 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
202
normal! 0
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
exe '1resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe '2resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 196 + 136) / 273)
exe '3resize ' . ((&lines * 14 + 27) / 54)
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
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe '2resize ' . ((&lines * 1 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 78 + 136) / 273)
exe '3resize ' . ((&lines * 38 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 78 + 136) / 273)
exe '4resize ' . ((&lines * 2 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 117 + 136) / 273)
exe '5resize ' . ((&lines * 37 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 117 + 136) / 273)
exe '6resize ' . ((&lines * 10 + 27) / 54)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1984 - ((18 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1984
normal! 05|
lcd ~/projects/neovim
wincmd w
argglobal
enew
setlocal fdm=indent
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
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1801 - ((17 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1801
normal! 038|
lcd ~/projects/neovim
wincmd w
argglobal
enew
setlocal fdm=indent
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
if bufexists("~/projects/neovim/src/nvim/move.c") | buffer ~/projects/neovim/src/nvim/move.c | else | edit ~/projects/neovim/src/nvim/move.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 199 - ((16 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
199
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
exe '2resize ' . ((&lines * 1 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 78 + 136) / 273)
exe '3resize ' . ((&lines * 38 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 78 + 136) / 273)
exe '4resize ' . ((&lines * 2 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 117 + 136) / 273)
exe '5resize ' . ((&lines * 37 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 117 + 136) / 273)
exe '6resize ' . ((&lines * 10 + 27) / 54)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
exe '1resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 57 + 136) / 273)
exe '2resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 57 + 136) / 273)
exe '3resize ' . ((&lines * 2 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 68 + 136) / 273)
exe '4resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 68 + 136) / 273)
exe 'vert 5resize ' . ((&columns * 67 + 136) / 273)
exe 'vert 6resize ' . ((&columns * 78 + 136) / 273)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 925 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
925
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 785 - ((7 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
785
normal! 05|
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
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 846 - ((45 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
846
normal! 014|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 756 - ((17 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
756
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 733 - ((39 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
733
normal! 03|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 57 + 136) / 273)
exe '2resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 57 + 136) / 273)
exe '3resize ' . ((&lines * 2 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 68 + 136) / 273)
exe '4resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 68 + 136) / 273)
exe 'vert 5resize ' . ((&columns * 67 + 136) / 273)
exe 'vert 6resize ' . ((&columns * 78 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
exe '1resize ' . ((&lines * 2 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 58 + 136) / 273)
exe '2resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 58 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 47 + 136) / 273)
exe 'vert 4resize ' . ((&columns * 58 + 136) / 273)
exe 'vert 5resize ' . ((&columns * 107 + 136) / 273)
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 838 - ((31 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
838
normal! 08|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1087 - ((18 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1087
normal! 030|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
110,110fold
129,129fold
136,138fold
233,233fold
246,246fold
246,246fold
271,271fold
271,271fold
271,271fold
271,271fold
310,314fold
326,327fold
321,330fold
358,362fold
374,380fold
382,382fold
400,405fold
407,407fold
364,442fold
448,448fold
451,453fold
473,473fold
483,483fold
485,485fold
564,564fold
567,568fold
567,568fold
567,568fold
567,568fold
567,568fold
567,568fold
586,587fold
586,587fold
586,587fold
586,587fold
572,589fold
595,595fold
600,605fold
629,630fold
658,658fold
660,660fold
711,711fold
723,737fold
739,739fold
765,766fold
765,766fold
779,780fold
779,780fold
779,780fold
793,794fold
788,796fold
809,809fold
806,811fold
869,869fold
962,962fold
968,968fold
970,997fold
1062,1063fold
1090,1090fold
1090,1090fold
1090,1090fold
1102,1109fold
1102,1109fold
1113,1114fold
1113,1114fold
1150,1151fold
1150,1151fold
1190,1191fold
1198,1198fold
1198,1198fold
1244,1257fold
1307,1313fold
1381,1381fold
1381,1381fold
1381,1381fold
1449,1450fold
1449,1450fold
1449,1450fold
1435,1463fold
1534,1534fold
1539,1539fold
1556,1556fold
1558,1558fold
1560,1563fold
1560,1564fold
1566,1568fold
1574,1574fold
1577,1577fold
1577,1577fold
1577,1578fold
1583,1583fold
1586,1586fold
1586,1586fold
1586,1587fold
1594,1594fold
1596,1596fold
1604,1605fold
1609,1611fold
1619,1625fold
1627,1629fold
1633,1636fold
1633,1636fold
1633,1636fold
1631,1636fold
1642,1642fold
1645,1650fold
1656,1656fold
1656,1656fold
1654,1657fold
1665,1667fold
1682,1684fold
1712,1712fold
1712,1712fold
1712,1712fold
1720,1720fold
1811,1819fold
1827,1833fold
1884,1884fold
1884,1884fold
1884,1884fold
1884,1884fold
1884,1884fold
1887,1887fold
1887,1887fold
1887,1887fold
1887,1887fold
1887,1887fold
1900,1900fold
1900,1900fold
1900,1900fold
1909,1910fold
1916,1917fold
1953,1955fold
1961,1961fold
2034,2034fold
2034,2034fold
2051,2053fold
2057,2058fold
2070,2070fold
2070,2070fold
2060,2072fold
2074,2074fold
2074,2087fold
2111,2111fold
2111,2111fold
2175,2176fold
2178,2179fold
2181,2182fold
2184,2185fold
2187,2187fold
2296,2296fold
2300,2300fold
2300,2300fold
2300,2300fold
2310,2311fold
2306,2320fold
2329,2329fold
2345,2346fold
2334,2371fold
2501,2506fold
2512,2512fold
2514,2514fold
2522,2527fold
2547,2548fold
2577,2579fold
2623,2623fold
2645,2645fold
2629,2667fold
2674,2677fold
2681,2694fold
2700,2721fold
2727,2727fold
2726,2736fold
2741,2743fold
2745,2746fold
2751,2751fold
2807,2807fold
2860,2860fold
2866,2866fold
2864,2868fold
2927,2927fold
2933,2936fold
2945,2945fold
2945,2945fold
3000,3000fold
3023,3026fold
3023,3026fold
3023,3026fold
3081,3084fold
3081,3084fold
3081,3084fold
3103,3104fold
3106,3106fold
110
normal! zc
129
normal! zc
136
normal! zc
233
normal! zc
246
normal! zo
246
normal! zc
246
normal! zc
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
310
normal! zc
321
normal! zo
326
normal! zc
321
normal! zc
358
normal! zc
364
normal! zo
374
normal! zc
382
normal! zc
400
normal! zc
407
normal! zc
364
normal! zc
448
normal! zc
451
normal! zc
473
normal! zc
483
normal! zc
485
normal! zc
564
normal! zc
567
normal! zo
567
normal! zo
567
normal! zo
567
normal! zo
567
normal! zo
567
normal! zc
567
normal! zc
567
normal! zc
567
normal! zc
567
normal! zc
567
normal! zc
572
normal! zo
586
normal! zo
586
normal! zo
586
normal! zo
586
normal! zc
586
normal! zc
586
normal! zc
586
normal! zc
572
normal! zc
595
normal! zc
600
normal! zc
629
normal! zc
658
normal! zc
660
normal! zc
711
normal! zc
723
normal! zc
739
normal! zc
765
normal! zo
765
normal! zc
765
normal! zc
779
normal! zo
779
normal! zo
779
normal! zc
779
normal! zc
779
normal! zc
788
normal! zo
793
normal! zc
788
normal! zc
806
normal! zo
809
normal! zc
806
normal! zc
869
normal! zc
962
normal! zc
968
normal! zc
970
normal! zc
1062
normal! zc
1090
normal! zo
1090
normal! zo
1090
normal! zc
1090
normal! zc
1090
normal! zc
1102
normal! zo
1102
normal! zc
1102
normal! zc
1113
normal! zo
1113
normal! zc
1113
normal! zc
1150
normal! zo
1150
normal! zc
1150
normal! zc
1190
normal! zc
1198
normal! zo
1198
normal! zc
1198
normal! zc
1244
normal! zc
1307
normal! zc
1381
normal! zo
1381
normal! zo
1381
normal! zc
1381
normal! zc
1381
normal! zc
1435
normal! zo
1449
normal! zo
1449
normal! zo
1449
normal! zc
1449
normal! zc
1449
normal! zc
1435
normal! zc
1534
normal! zc
1539
normal! zc
1556
normal! zc
1558
normal! zc
1560
normal! zo
1560
normal! zc
1560
normal! zc
1566
normal! zc
1574
normal! zc
1577
normal! zo
1577
normal! zo
1577
normal! zc
1577
normal! zc
1577
normal! zc
1583
normal! zc
1586
normal! zo
1586
normal! zo
1586
normal! zc
1586
normal! zc
1586
normal! zc
1594
normal! zc
1596
normal! zc
1604
normal! zc
1609
normal! zc
1619
normal! zc
1627
normal! zc
1631
normal! zo
1633
normal! zo
1633
normal! zo
1633
normal! zc
1633
normal! zc
1633
normal! zc
1631
normal! zc
1642
normal! zc
1645
normal! zc
1654
normal! zo
1656
normal! zo
1656
normal! zc
1656
normal! zc
1654
normal! zc
1665
normal! zc
1682
normal! zc
1712
normal! zo
1712
normal! zo
1712
normal! zc
1712
normal! zc
1712
normal! zc
1720
normal! zc
1811
normal! zc
1827
normal! zc
1884
normal! zo
1884
normal! zo
1884
normal! zo
1884
normal! zo
1884
normal! zc
1884
normal! zc
1884
normal! zc
1884
normal! zc
1884
normal! zc
1887
normal! zo
1887
normal! zo
1887
normal! zo
1887
normal! zo
1887
normal! zc
1887
normal! zc
1887
normal! zc
1887
normal! zc
1887
normal! zc
1900
normal! zo
1900
normal! zo
1900
normal! zc
1900
normal! zc
1900
normal! zc
1909
normal! zc
1916
normal! zc
1953
normal! zc
1961
normal! zc
2034
normal! zo
2034
normal! zc
2034
normal! zc
2051
normal! zc
2057
normal! zc
2060
normal! zo
2070
normal! zo
2070
normal! zc
2070
normal! zc
2060
normal! zc
2074
normal! zo
2074
normal! zc
2074
normal! zc
2111
normal! zo
2111
normal! zc
2111
normal! zc
2175
normal! zc
2178
normal! zc
2181
normal! zc
2184
normal! zc
2187
normal! zc
2296
normal! zc
2300
normal! zo
2300
normal! zo
2300
normal! zc
2300
normal! zc
2300
normal! zc
2306
normal! zo
2310
normal! zc
2306
normal! zc
2329
normal! zc
2334
normal! zo
2345
normal! zc
2334
normal! zc
2501
normal! zc
2512
normal! zc
2514
normal! zc
2522
normal! zc
2547
normal! zc
2577
normal! zc
2623
normal! zc
2629
normal! zo
2645
normal! zc
2629
normal! zc
2674
normal! zc
2681
normal! zc
2700
normal! zc
2726
normal! zo
2727
normal! zc
2726
normal! zc
2741
normal! zc
2745
normal! zc
2751
normal! zc
2807
normal! zc
2860
normal! zc
2864
normal! zo
2866
normal! zc
2864
normal! zc
2927
normal! zc
2933
normal! zc
2945
normal! zo
2945
normal! zc
2945
normal! zc
3000
normal! zc
3023
normal! zo
3023
normal! zo
3023
normal! zc
3023
normal! zc
3023
normal! zc
3081
normal! zo
3081
normal! zo
3081
normal! zc
3081
normal! zc
3081
normal! zc
3103
normal! zc
3106
normal! zc
let s:l = 1060 - ((17 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1060
normal! 018|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/xdiff/xdiffi.c") | buffer ~/projects/neovim/src/nvim/xdiff/xdiffi.c | else | edit ~/projects/neovim/src/nvim/xdiff/xdiffi.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1026 - ((9 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1026
normal! 05|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 2 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 58 + 136) / 273)
exe '2resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 58 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 47 + 136) / 273)
exe 'vert 4resize ' . ((&columns * 58 + 136) / 273)
exe 'vert 5resize ' . ((&columns * 107 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/xdiff/xprepare.c
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
let s:l = 271 - ((9 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
271
normal! 017|
lcd ~/projects/neovim
tabedit ~/projects/neovim/src/nvim/xdiff/xdiffi.c
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
exe '1resize ' . ((&lines * 15 + 27) / 54)
exe '2resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 76 + 136) / 273)
exe '3resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 113 + 136) / 273)
exe '4resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 82 + 136) / 273)
argglobal
if bufexists("term://.//862687:/bin/bash") | buffer term://.//862687:/bin/bash | else | edit term://.//862687:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1791 - ((14 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1791
normal! 0
lcd ~/projects/neovim
wincmd w
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
let s:l = 1022 - ((1 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1022
normal! 017|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/xdiff/xdiffi.c") | buffer ~/projects/neovim/src/nvim/xdiff/xdiffi.c | else | edit ~/projects/neovim/src/nvim/xdiff/xdiffi.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 331 - ((16 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
331
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/xdiff/xtypes.h") | buffer ~/projects/neovim/src/nvim/xdiff/xtypes.h | else | edit ~/projects/neovim/src/nvim/xdiff/xtypes.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
42
normal! zo
42
normal! zo
42
normal! zo
49
normal! zo
49
normal! zo
49
normal! zo
62
normal! zo
62
normal! zo
62
normal! zo
let s:l = 52 - ((17 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 015|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 15 + 27) / 54)
exe '2resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 76 + 136) / 273)
exe '3resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 113 + 136) / 273)
exe '4resize ' . ((&lines * 35 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 82 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/xdiff/xdiffi.c
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
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 118 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 57 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 331 - ((21 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
331
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/xdiff/xdiffi.c") | buffer ~/projects/neovim/src/nvim/xdiff/xdiffi.c | else | edit ~/projects/neovim/src/nvim/xdiff/xdiffi.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 310 - ((20 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
310
normal! 09|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/xdiff/xtypes.h") | buffer ~/projects/neovim/src/nvim/xdiff/xtypes.h | else | edit ~/projects/neovim/src/nvim/xdiff/xtypes.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((11 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 09|
lcd ~/projects/neovim
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 118 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 57 + 136) / 273)
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
