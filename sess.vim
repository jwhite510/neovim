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
badd +2423 src/nvim/diff.c
badd +2672 src/nvim/ex_cmds.c
badd +1560 src/nvim/buffer.c
badd +1 ~/projects/alg/AddString/main.cpp
badd +230 src/nvim/ex_eval.c
badd +25 term://.//141707:/bin/bash
badd +1 ~/.local/share/nvim/log
badd +2352 src/nvim/screen.c
badd +108 CMakeLists.txt
badd +910 src/nvim/buffer_defs.h
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
badd +1 term://.//78775:/bin/bash
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
badd +1 term://.//78801:/bin/bash
badd +1 term://.//78827:/bin/bash
badd +7 src/nvim/pos.h
badd +42 src/nvim/memory.c
badd +33 test/symbolic/klee/nvim/memory.c
badd +1 build/bin/filea.txt
badd +1540 src/nvim/mark.c
badd +56 term://.//43900:/bin/bash
badd +2351 fugitive:///home/zom/projects/neovim/.git//f12053a8942b2ea4e7d071e26c5baad9c306dd04/src/nvim/diff.c
badd +609 term://.//56286:/bin/bash
badd +1025 term://.//82961:/bin/bash
badd +1855 term://.//109503:/bin/bash
badd +239 ~/.config/i3/config
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
let s:l = 3318 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3318
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
if bufexists("term://.//78775:/bin/bash") | buffer term://.//78775:/bin/bash | else | edit term://.//78775:/bin/bash | endif
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
let s:l = 910 - ((9 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
910
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
let s:l = 2493 - ((20 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2493
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
let s:l = 2533 - ((21 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2533
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
let s:l = 3267 - ((22 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3267
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
let s:l = 3090 - ((21 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3090
normal! 09|
lcd ~/projects/neovim
wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 136) / 273)
exe 'vert 2resize ' . ((&columns * 88 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 107 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe '2resize ' . ((&lines * 37 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 78 + 136) / 273)
exe '4resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 97 + 136) / 273)
exe '5resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 97 + 136) / 273)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2333 - ((8 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2333
normal! 019|
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
let s:l = 903 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
903
normal! 03|
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
let s:l = 906 - ((23 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
906
normal! 07|
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
let s:l = 518 - ((13 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
518
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
let s:l = 1732 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1732
normal! 06|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 96 + 136) / 273)
exe '2resize ' . ((&lines * 37 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 96 + 136) / 273)
exe 'vert 3resize ' . ((&columns * 78 + 136) / 273)
exe '4resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 97 + 136) / 273)
exe '5resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 97 + 136) / 273)
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
exe '1resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 34 + 136) / 273)
exe '2resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 63 + 136) / 273)
exe '3resize ' . ((&lines * 33 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 98 + 136) / 273)
exe '4resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 28 + 136) / 273)
exe '5resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 47 + 136) / 273)
exe '6resize ' . ((&lines * 33 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 76 + 136) / 273)
exe '7resize ' . ((&lines * 37 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 97 + 136) / 273)
exe '8resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 8resize ' . ((&columns * 97 + 136) / 273)
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
let s:l = 6 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
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
let s:l = 1 - ((0 * winheight(0) + 8) / 17)
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
let s:l = 2384 - ((41 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2384
normal! 0
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
let s:l = 914 - ((0 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
914
normal! 05|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//78801:/bin/bash") | buffer term://.//78801:/bin/bash | else | edit term://.//78801:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 17 - ((16 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
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
2015,2349fold
2015
normal! zc
let s:l = 2352 - ((342 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2352
normal! 07|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("term://.//78827:/bin/bash") | buffer term://.//78827:/bin/bash | else | edit term://.//78827:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10037 - ((36 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10037
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
755,1343fold
1345,1546fold
755
normal! zc
1345
normal! zc
let s:l = 745 - ((9 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
745
normal! 09|
lcd ~/projects/neovim
wincmd w
exe '1resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 34 + 136) / 273)
exe '2resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 63 + 136) / 273)
exe '3resize ' . ((&lines * 33 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 98 + 136) / 273)
exe '4resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 28 + 136) / 273)
exe '5resize ' . ((&lines * 17 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 47 + 136) / 273)
exe '6resize ' . ((&lines * 33 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 76 + 136) / 273)
exe '7resize ' . ((&lines * 37 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 97 + 136) / 273)
exe '8resize ' . ((&lines * 13 + 27) / 54)
exe 'vert 8resize ' . ((&columns * 97 + 136) / 273)
tabedit ~/projects/neovim/src/nvim/diff.c
set splitbelow splitright
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
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
exe 'vert 1resize ' . ((&columns * 20 + 136) / 273)
exe '2resize ' . ((&lines * 3 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 214 + 136) / 273)
exe '3resize ' . ((&lines * 47 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 59 + 136) / 273)
exe '4resize ' . ((&lines * 47 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 108 + 136) / 273)
exe '5resize ' . ((&lines * 47 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 45 + 136) / 273)
exe '6resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 37 + 136) / 273)
exe '7resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 37 + 136) / 273)
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
let s:l = 2252 - ((5 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2252
normal! 0
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("fugitive:///home/zom/projects/neovim/.git//f12053a8942b2ea4e7d071e26c5baad9c306dd04/src/nvim/diff.c") | buffer fugitive:///home/zom/projects/neovim/.git//f12053a8942b2ea4e7d071e26c5baad9c306dd04/src/nvim/diff.c | else | edit fugitive:///home/zom/projects/neovim/.git//f12053a8942b2ea4e7d071e26c5baad9c306dd04/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 2355 - ((1 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2355
normal! 021|
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
2298,2335fold
2343,2347fold
2353,2359fold
2361,2383fold
2353,2385fold
2391,2404fold
2298
normal! zc
2343
normal! zc
2353
normal! zo
2353
normal! zc
2361
normal! zc
2391
normal! zc
let s:l = 2411 - ((113 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2411
normal! 09|
lcd ~/projects/neovim
wincmd w
argglobal
if bufexists("~/projects/neovim/src/nvim/diff.c") | buffer ~/projects/neovim/src/nvim/diff.c | else | edit ~/projects/neovim/src/nvim/diff.c | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
2298,2335fold
2343,2347fold
2353,2359fold
2361,2383fold
2353,2385fold
2391,2404fold
2427,2432fold
2437,2442fold
2437,2442fold
2353
normal! zo
2437
normal! zo
2437
normal! zc
let s:l = 2423 - ((13 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2423
normal! 07|
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
let s:l = 2352 - ((23 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2352
normal! 012|
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
14,16fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
82,88fold
123,127fold
137,138fold
145,148fold
153,154fold
163,262fold
277,284fold
294,296fold
305,306fold
322,330fold
335,341fold
349,359fold
365,366fold
381,388fold
372,389fold
410,413fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
433,433fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
446,446fold
421,478fold
487,493fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
496,496fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
527,527fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
537,537fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
539,539fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
545,545fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
547,548fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
556,556fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
558,558fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
561,561fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
568,568fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
571,571fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
573,573fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
577,577fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
584,584fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
593,593fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
631,631fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
806,806fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
823,823fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
831,831fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
833,834fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
840,840fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
843,844fold
515,881fold
905,908fold
912,917fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
941,941fold
931,950fold
966,970fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
985,985fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
987,987fold
978,990fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1005,1005fold
1004,1014fold
1023,1025fold
1023,1025fold
1033,1036fold
1033,1036fold
1045,1053fold
1059,1060fold
1070,1072fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1076,1076fold
1079,1080fold
1084,1096fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1100,1104fold
1110,1113fold
1120,1128fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1139,1139fold
1134,1149fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1159,1159fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1174,1174fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1181,1182fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1185,1186fold
1202,1211fold
1216,1225fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1233,1233fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1235,1235fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1239,1239fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1242,1243fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1245,1245fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1260,1260fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1290,1290fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1305,1309fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1319,1319fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1322,1322fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1339,1339fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1341,1341fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1343,1343fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1351,1351fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1369,1369fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1373,1373fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1448,1448fold
1156,1454fold
1459,1459fold
1464,1464fold
1464,1464fold
let s:l = 916 - ((14 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
916
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
setlocal nofen
silent! normal! zE
let s:l = 511 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
511
normal! 0
lcd ~/projects/neovim
wincmd w
4wincmd w
exe 'vert 1resize ' . ((&columns * 20 + 136) / 273)
exe '2resize ' . ((&lines * 3 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 214 + 136) / 273)
exe '3resize ' . ((&lines * 47 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 59 + 136) / 273)
exe '4resize ' . ((&lines * 47 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 108 + 136) / 273)
exe '5resize ' . ((&lines * 47 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 45 + 136) / 273)
exe '6resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 6resize ' . ((&columns * 37 + 136) / 273)
exe '7resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 7resize ' . ((&columns * 37 + 136) / 273)
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
if bufexists("term://.//109503:/bin/bash") | buffer term://.//109503:/bin/bash | else | edit term://.//109503:/bin/bash | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 2946 - ((50 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2946
normal! 030|
lcd ~/projects/neovim
tabnext 11
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
