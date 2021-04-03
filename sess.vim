let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/projects/neovim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +80 README.md
badd +1 term://.//141672:/bin/bash
badd +2351 src/nvim/diff.c
badd +2672 src/nvim/ex_cmds.c
badd +1560 src/nvim/buffer.c
badd +1 ~/projects/alg/AddString/main.cpp
badd +230 src/nvim/ex_eval.c
badd +25 term://.//141707:/bin/bash
badd +1 ~/.local/share/nvim/log
badd +742 src/nvim/screen.c
badd +108 CMakeLists.txt
badd +904 src/nvim/buffer_defs.h
badd +1187 src/nvim/move.c
badd +15 term://.//854243:/bin/bash
badd +6 term://.//854258:/bin/bash
badd +6097 src/nvim/syntax.c
badd +866 src/nvim/fold.c
badd +20 src/nvim/screen.h
badd +1 src/nvim/buffer_defs.cpp
badd +93 src/nvim/vim.h
badd +75 ci/common/suite.sh
badd +235 scripts/gen_vimdoc.py
badd +354 src/nvim/xdiff/xdiffi.c
badd +105 src/nvim/xdiff/xdiff.h
badd +51 src/nvim/xdiff/xtypes.h
badd +389 src/nvim/xdiff/xpatience.c
badd +291 src/nvim/xdiff/xprepare.c
badd +52 src/nvim/xdiff/xdiffi.h
badd +1 build/bin/debug.sh
badd +1 src/nvim/xdiff
badd +9 src/nvim/xdiff/README.txt
badd +3 src/nvim/xdiff/COPYING
badd +530 term://.//158323:/bin/bash
badd +77 src/nvim/garray.c
badd +211 term://.//159345:/bin/bash
badd +1 term://.//187382:/bin/bash
badd +67 src/nvim/strings.c
badd +1 src/nvim/garray.h
badd +1550 runtime/syntax/2html.vim
badd +95 term://.//164340:/bin/bash
badd +1728 src/nvim/eval/funcs.c
badd +1 src/nvim/window.c
badd +1 ~/.vimrc
badd +759 src/nvim/testdir/test_diffmode.vim
badd +134 src/nvim/highlight_defs.h
badd +269 src/nvim/option.c
badd +94 src/nvim/eval.lua
badd +870 runtime/doc/usr_41.txt
badd +3513 runtime/doc/eval.txt
badd +1 build/bin/fileb.txt
badd +452 src/nvim/globals.h
badd +0 term://.//189472:/bin/bash
badd +0 term://.//192832:/bin/bash
badd +7 src/nvim/pos.h
badd +0 term://.//201671:/bin/bash
badd +102 term://.//203893:/bin/bash
badd +42 src/nvim/memory.c
badd +22 test/symbolic/klee/nvim/memory.c
badd +1 build/bin/filea.txt
argglobal
%argdel
$argadd ./
set stal=2
edit src/nvim/diff.c
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
let s:l = 1109 - ((4 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1109
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
exe 'vert 2resize ' . ((&columns * 98 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 97 + 136) / 273)
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
let s:l = 1092 - ((16 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1092
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
let s:l = 836 - ((50 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
836
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
let s:l = 922 - ((28 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
922
normal! 03|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 98 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 97 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/garray.h
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
3wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
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
exe '1resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 49 + 136) / 273)
exe '2resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 48 + 136) / 273)
exe '3resize ' . ((&lines * 31 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 98 + 136) / 273)
exe '4resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 77 + 136) / 273)
exe '5resize ' . ((&lines * 11 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 58 + 136) / 273)
exe '6resize ' . ((&lines * 34 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 58 + 136) / 273)
exe '7resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 37 + 136) / 273)
exe '8resize ' . ((&lines * 4 + 27) / 54)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 12 - ((0 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 02|
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
let s:l = 84 - ((0 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
84
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
let s:l = 3253 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3253
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
let s:l = 1059 - ((26 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1059
normal! 027|
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
let s:l = 89 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
89
normal! 017|
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
let s:l = 1059 - ((14 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1059
normal! 027|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//187382:/bin/bash") | buffer term://.//187382:/bin/bash | else | edit term://.//187382:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 46 - ((45 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
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
exe '1resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 49 + 136) / 273)
exe '2resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 48 + 136) / 273)
exe '3resize ' . ((&lines * 31 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 98 + 136) / 273)
exe '4resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 77 + 136) / 273)
exe '5resize ' . ((&lines * 11 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 58 + 136) / 273)
exe '6resize ' . ((&lines * 34 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 58 + 136) / 273)
exe '7resize ' . ((&lines * 46 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 37 + 136) / 273)
exe '8resize ' . ((&lines * 4 + 27) / 54)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
exe 'vert 1resize ' . ((&columns * 71 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 273)
exe '3resize ' . ((&lines * 20 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 110 + 136) / 273)
exe '4resize ' . ((&lines * 30 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 110 + 136) / 273)
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
let s:l = 805 - ((27 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
805
normal! 0
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
let s:l = 1588 - ((28 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1588
normal! 07|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 925 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
925
normal! 04|
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
let s:l = 937 - ((11 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
937
normal! 05|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 273)
exe '3resize ' . ((&lines * 20 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 110 + 136) / 273)
exe '4resize ' . ((&lines * 30 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 110 + 136) / 273)
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
exe '1resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 78 + 136) / 273)
exe '2resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 97 + 136) / 273)
exe '3resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 96 + 136) / 273)
exe '4resize ' . ((&lines * 34 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 96 + 136) / 273)
exe '5resize ' . ((&lines * 2 + 27) / 54)
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
let s:l = 661 - ((29 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
661
normal! 08|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/window.c") | buffer ~/projects/neovim/src/nvim/window.c | else | edit ~/projects/neovim/src/nvim/window.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3862 - ((18 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3862
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/buffer_defs.h") | buffer ~/projects/neovim/src/nvim/buffer_defs.h | else | edit ~/projects/neovim/src/nvim/buffer_defs.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 903 - ((2 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
903
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
let s:l = 1860 - ((20 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1860
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
exe '1resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 78 + 136) / 273)
exe '2resize ' . ((&lines * 48 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 97 + 136) / 273)
exe '3resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 96 + 136) / 273)
exe '4resize ' . ((&lines * 34 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 96 + 136) / 273)
exe '5resize ' . ((&lines * 2 + 27) / 54)
tabedit ~/.vimrc
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
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 46 + 136) / 273)
exe '2resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 28 + 136) / 273)
exe '3resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 63 + 136) / 273)
exe '4resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 66 + 136) / 273)
exe '5resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 66 + 136) / 273)
exe '6resize ' . ((&lines * 10 + 27) / 54)
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
let s:l = 1044 - ((21 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1044
normal! 04|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/highlight_defs.h") | buffer ~/projects/neovim/src/nvim/highlight_defs.h | else | edit ~/projects/neovim/src/nvim/highlight_defs.h | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 134 - ((27 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
134
normal! 05|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/eval/funcs.c") | buffer ~/projects/neovim/src/nvim/eval/funcs.c | else | edit ~/projects/neovim/src/nvim/eval/funcs.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1746 - ((18 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1746
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
let s:l = 2428 - ((20 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2428
normal! 027|
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
let s:l = 2468 - ((21 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2468
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
exe '1resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 46 + 136) / 273)
exe '2resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 28 + 136) / 273)
exe '3resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 63 + 136) / 273)
exe '4resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 66 + 136) / 273)
exe '5resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 66 + 136) / 273)
exe '6resize ' . ((&lines * 10 + 27) / 54)
tabedit ~/projects/neovim/src/nvim/diff.c
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
exe 'vert 1resize ' . ((&columns * 73 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 82 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 116 + 136) / 273)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1590 - ((7 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1590
normal! 019|
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
let s:l = 1584 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1584
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
1506,1523fold
1527,1531fold
1535,1545fold
1548,1572fold
1548,1572fold
1576,1582fold
1576,1582fold
1584,1591fold
1584,1591fold
1595,1604fold
1506
normal! zc
1527
normal! zc
1535
normal! zc
1548
normal! zo
1548
normal! zc
1548
normal! zc
1576
normal! zo
1576
normal! zc
1576
normal! zc
1584
normal! zo
1584
normal! zc
1584
normal! zc
1595
normal! zc
let s:l = 3202 - ((22 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3202
normal! 05|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 73 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 82 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 116 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
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
exe 'vert 2resize ' . ((&columns * 88 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 107 + 136) / 273)
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
2405,2419fold
2390,2472fold
2390
normal! zo
2405
normal! zc
let s:l = 2318 - ((23 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2318
normal! 055|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/eval/funcs.c") | buffer ~/projects/neovim/src/nvim/eval/funcs.c | else | edit ~/projects/neovim/src/nvim/eval/funcs.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1751 - ((29 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1751
normal! 013|
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
let s:l = 3085 - ((21 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3085
normal! 09|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 88 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 107 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/buffer_defs.h
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 908 - ((19 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
908
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/buffer_defs.h") | buffer ~/projects/neovim/src/nvim/buffer_defs.h | else | edit ~/projects/neovim/src/nvim/buffer_defs.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 903 - ((36 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
903
normal! 036|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 176 + 136) / 273)
tabedit ~/projects/neovim/build/bin/filea.txt
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 9 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 54 + 136) / 273)
exe '2resize ' . ((&lines * 9 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 53 + 136) / 273)
exe '3resize ' . ((&lines * 41 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 108 + 136) / 273)
exe '4resize ' . ((&lines * 20 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 38 + 136) / 273)
exe '5resize ' . ((&lines * 20 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 57 + 136) / 273)
exe '6resize ' . ((&lines * 30 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 96 + 136) / 273)
exe '7resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 67 + 136) / 273)
exe '8resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 8resize ' . ((&columns * 67 + 136) / 273)
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
let s:l = 1 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/build/bin/fileb.txt") | buffer ~/projects/neovim/build/bin/fileb.txt | else | edit ~/projects/neovim/build/bin/fileb.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2307,2307fold
2310,2314fold
2310,2314fold
2318,2322fold
2306,2331fold
2298,2332fold
2406,2409fold
2411,2412fold
2405,2413fold
2415,2416fold
2405,2416fold
2405,2419fold
2405,2419fold
2421,2423fold
2438,2439fold
2441,2460fold
2462,2463fold
2298
normal! zo
2306
normal! zo
2405
normal! zo
2405
normal! zo
2405
normal! zo
2405
normal! zo
let s:l = 2373 - ((19 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2373
normal! 09|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/buffer_defs.h") | buffer ~/projects/neovim/src/nvim/buffer_defs.h | else | edit ~/projects/neovim/src/nvim/buffer_defs.h | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 907 - ((13 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
907
normal! 017|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//189472:/bin/bash") | buffer term://.//189472:/bin/bash | else | edit term://.//189472:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1256 - ((19 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1256
normal! 0
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
2010,2344fold
2010
normal! zc
let s:l = 2347 - ((341 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2347
normal! 011|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//192832:/bin/bash") | buffer term://.//192832:/bin/bash | else | edit term://.//192832:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10034 - ((33 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10034
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
750,1338fold
1340,1541fold
750
normal! zc
1340
normal! zc
let s:l = 746 - ((7 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
746
normal! 019|
lcd ~/projects/neovim
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 9 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 54 + 136) / 273)
exe '2resize ' . ((&lines * 9 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 53 + 136) / 273)
exe '3resize ' . ((&lines * 41 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 108 + 136) / 273)
exe '4resize ' . ((&lines * 20 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 38 + 136) / 273)
exe '5resize ' . ((&lines * 20 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 57 + 136) / 273)
exe '6resize ' . ((&lines * 30 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 96 + 136) / 273)
exe '7resize ' . ((&lines * 36 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 67 + 136) / 273)
exe '8resize ' . ((&lines * 14 + 27) / 54)
exe 'vert 8resize ' . ((&columns * 67 + 136) / 273)
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
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 44 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 73 + 136) / 273)
exe '2resize ' . ((&lines * 44 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 72 + 136) / 273)
exe '3resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 63 + 136) / 273)
exe '4resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 62 + 136) / 273)
exe '5resize ' . ((&lines * 26 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 126 + 136) / 273)
exe '6resize ' . ((&lines * 6 + 27) / 54)
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
let s:l = 2271 - ((21 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2271
normal! 047|
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
setlocal nofen
silent! normal! zE
let s:l = 2362 - ((29 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2362
normal! 022|
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
setlocal nofen
silent! normal! zE
let s:l = 512 - ((5 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
512
normal! 011|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/test/symbolic/klee/nvim/memory.c") | buffer ~/projects/neovim/test/symbolic/klee/nvim/memory.c | else | edit ~/projects/neovim/test/symbolic/klee/nvim/memory.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((5 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 03|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//203893:/bin/bash") | buffer term://.//203893:/bin/bash | else | edit term://.//203893:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 593 - ((25 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
593
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
exe '1resize ' . ((&lines * 44 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 73 + 136) / 273)
exe '2resize ' . ((&lines * 44 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 72 + 136) / 273)
exe '3resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 63 + 136) / 273)
exe '4resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 62 + 136) / 273)
exe '5resize ' . ((&lines * 26 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 126 + 136) / 273)
exe '6resize ' . ((&lines * 6 + 27) / 54)
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
if bufexists("term://.//201671:/bin/bash") | buffer term://.//201671:/bin/bash | else | edit term://.//201671:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2053 - ((50 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2053
normal! 030|
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
