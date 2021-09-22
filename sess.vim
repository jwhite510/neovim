let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Projects/neovim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd .
set stal=2
tabnew
tabnew
tabnew
tabnew
tabrewind
argglobal
if bufexists("term://~/Projects/neovim//10841:/bin/bash") | buffer term://~/Projects/neovim//10841:/bin/bash | else | edit term://~/Projects/neovim//10841:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/Projects/neovim//10841:/bin/bash
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 684 - ((36 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 684
normal! 041|
tabnext
edit src/nvim/screen.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 63 + 95) / 191)
exe '2resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 63 + 95) / 191)
exe '3resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 63 + 95) / 191)
exe '4resize ' . ((&lines * 11 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 63 + 95) / 191)
exe 'vert 5resize ' . ((&columns * 63 + 95) / 191)
argglobal
balt src/nvim/diff.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1998,2351fold
let &fdl = &fdl
1998
normal! zc
let s:l = 1997 - ((20 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1997
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/diff.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1998,2351fold
let &fdl = &fdl
1998
normal! zc
let s:l = 1580 - ((5 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1580
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/diff.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1998,2351fold
let &fdl = &fdl
1998
normal! zc
let s:l = 1618 - ((5 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1618
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/diff.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1998,2351fold
let &fdl = &fdl
1998
normal! zc
let s:l = 1696 - ((2 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1696
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/diff.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1998,2351fold
let &fdl = &fdl
1998
normal! zc
let s:l = 1995 - ((16 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1995
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 63 + 95) / 191)
exe '2resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 63 + 95) / 191)
exe '3resize ' . ((&lines * 12 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 63 + 95) / 191)
exe '4resize ' . ((&lines * 11 + 20) / 41)
exe 'vert 4resize ' . ((&columns * 63 + 95) / 191)
exe 'vert 5resize ' . ((&columns * 63 + 95) / 191)
tabnext
edit todo.txt
argglobal
balt src/nvim/screen.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext
edit src/nvim/screen.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 53 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 73 + 95) / 191)
exe 'vert 3resize ' . ((&columns * 63 + 95) / 191)
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
744,1361fold
1363,1386fold
1392,1404fold
1408,1559fold
1568,1570fold
1568,1570fold
1568,1570fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
let s:l = 742 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 742
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
1363,1386fold
1392,1404fold
1408,1612fold
let &fdl = &fdl
let s:l = 1613 - ((871 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1613
normal! 05|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1657fold
1659,1690fold
let &fdl = &fdl
let s:l = 1699 - ((957 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1699
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 53 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 73 + 95) / 191)
exe 'vert 3resize ' . ((&columns * 63 + 95) / 191)
tabnext
edit src/nvim/screen.c
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 63 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 63 + 95) / 191)
exe 'vert 3resize ' . ((&columns * 63 + 95) / 191)
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
324,587fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
let &fdl = &fdl
let s:l = 594 - ((278 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 594
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,540fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
let &fdl = &fdl
let s:l = 324 - ((8 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 324
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
744,1723fold
744,1723fold
let &fdl = &fdl
744
normal! zo
744
normal! zo
1392
normal! zc
1407
normal! zo
1408
normal! zc
1569
normal! zo
1569
normal! zo
1569
normal! zc
744
normal! zc
let s:l = 1726 - ((988 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1726
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 63 + 95) / 191)
exe 'vert 2resize ' . ((&columns * 63 + 95) / 191)
exe 'vert 3resize ' . ((&columns * 63 + 95) / 191)
tabnext 5
set stal=1
badd +0 term://~/Projects/neovim//10841:/bin/bash
badd +1 ~/Projects/neovim
badd +1756 src/nvim/diff.c
badd +18 build/include/diff.h.generated.h
badd +324 src/nvim/screen.c
badd +0 todo.txt
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
