let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/neovim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ./
set stal=2
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabnew
tabrewind
edit term://~/Projects/neovim//10841:/bin/bash
argglobal
balt term://~/Projects/neovim//10841:/bin/bash
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
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
exe 'vert 1resize ' . ((&columns * 90 + 136) / 272)
exe '2resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 272)
exe '3resize ' . ((&lines * 17 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
exe '4resize ' . ((&lines * 14 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 5resize ' . ((&columns * 90 + 136) / 272)
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
let s:l = 1995 - ((24 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1995
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
let s:l = 1580 - ((7 * winheight(0) + 8) / 16)
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
let s:l = 1618 - ((0 * winheight(0) + 8) / 17)
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
let s:l = 1696 - ((0 * winheight(0) + 7) / 14)
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
let s:l = 1995 - ((21 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1995
normal! 021|
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 136) / 272)
exe '2resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 272)
exe '3resize ' . ((&lines * 17 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
exe '4resize ' . ((&lines * 14 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 5resize ' . ((&columns * 90 + 136) / 272)
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
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
exe 'vert 1resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
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
let s:l = 606 - ((287 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 606
normal! 07|
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
324
normal! zo
let s:l = 606 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 606
normal! 07|
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
let s:l = 1747 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1747
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 90 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
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
exe 'vert 1resize ' . ((&columns * 75 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 105 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
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
let s:l = 1580 - ((189 * winheight(0) + 24) / 49)
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
let s:l = 742 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 742
normal! 013|
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
let s:l = 1695 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1695
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 75 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 105 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 90 + 136) / 272)
tabnext
edit src/nvim/buffer_defs.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
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
exe '1resize ' . ((&lines * 18 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 81 + 136) / 272)
exe '2resize ' . ((&lines * 6 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 81 + 136) / 272)
exe '3resize ' . ((&lines * 23 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 81 + 136) / 272)
exe 'vert 4resize ' . ((&columns * 77 + 136) / 272)
exe 'vert 5resize ' . ((&columns * 112 + 136) / 272)
argglobal
balt src/nvim/types.h
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
929
normal! zo
let s:l = 927 - ((3 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 927
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/globals.h") | buffer src/nvim/globals.h | else | edit src/nvim/globals.h | endif
if &buftype ==# 'terminal'
  silent file src/nvim/globals.h
endif
balt src/nvim/screen.c
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
435
normal! zo
436
normal! zo
436
normal! zo
436
normal! zo
436
normal! zo
436
normal! zo
let s:l = 434 - ((1 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 434
normal! 010|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/globals.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
382,390fold
392,393fold
395,399fold
324,540fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
let &fdl = &fdl
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zc
let s:l = 407 - ((86 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 407
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/globals.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
let &fdl = &fdl
324
normal! zo
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zo
396
normal! zc
395
normal! zc
414
normal! zo
417
normal! zc
442
normal! zc
414
normal! zc
446
normal! zc
550
normal! zo
550
normal! zc
589
normal! zo
590
normal! zc
589
normal! zc
let s:l = 548 - ((227 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 548
normal! 05|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/globals.h
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
1388,1390fold
1392,1404fold
1408,1559fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
let s:l = 1580 - ((840 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1580
normal! 011|
wincmd w
exe '1resize ' . ((&lines * 18 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 81 + 136) / 272)
exe '2resize ' . ((&lines * 6 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 81 + 136) / 272)
exe '3resize ' . ((&lines * 23 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 81 + 136) / 272)
exe 'vert 4resize ' . ((&columns * 77 + 136) / 272)
exe 'vert 5resize ' . ((&columns * 112 + 136) / 272)
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
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe 'vert 1resize ' . ((&columns * 70 + 136) / 272)
exe '2resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 70 + 136) / 272)
exe '3resize ' . ((&lines * 47 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 70 + 136) / 272)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 130 + 136) / 272)
exe '5resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 130 + 136) / 272)
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
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
127,127fold
147,149fold
182,182fold
182,183fold
191,193fold
187,194fold
173,198fold
206,206fold
211,211fold
214,214fold
209,215fold
208,216fold
225,225fold
229,229fold
224,230fold
236,237fold
235,238fold
246,246fold
253,253fold
252,254fold
251,255fold
262,262fold
262,263fold
261,264fold
260,265fold
272,272fold
274,274fold
277,277fold
272,279fold
271,280fold
270,281fold
293,293fold
296,296fold
298,298fold
301,301fold
296,303fold
295,304fold
312,313fold
330,330fold
335,335fold
340,340fold
339,347fold
352,352fold
360,360fold
358,362fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
367,367fold
372,373fold
377,377fold
388,388fold
388,388fold
388,388fold
388,388fold
388,388fold
388,388fold
388,388fold
388,388fold
387,388fold
385,389fold
398,398fold
398,398fold
398,398fold
398,398fold
398,398fold
398,398fold
398,398fold
398,398fold
397,398fold
402,402fold
405,405fold
408,408fold
401,409fold
395,410fold
392,413fold
415,415fold
421,421fold
425,427fold
425,429fold
433,433fold
433,434fold
431,435fold
424,436fold
420,437fold
417,440fold
382,444fold
455,455fold
459,463fold
465,466fold
472,472fold
482,482fold
487,490fold
492,492fold
496,496fold
480,497fold
502,503fold
507,507fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
514,514fold
513,514fold
513,515fold
522,522fold
526,529fold
531,535fold
531,535fold
526,536fold
526,536fold
525,536fold
525,537fold
545,545fold
544,546fold
542,548fold
561,561fold
561,563fold
570,572fold
568,573fold
567,575fold
560,576fold
556,577fold
590,591fold
598,598fold
603,604fold
602,606fold
611,611fold
589,612fold
619,619fold
627,627fold
635,635fold
640,640fold
647,647fold
651,653fold
645,654fold
324,661fold
667,667fold
672,672fold
675,675fold
677,677fold
679,679fold
681,681fold
683,683fold
669,685fold
695,698fold
693,699fold
709,709fold
712,712fold
712,712fold
712,712fold
711,712fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
747,747fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
749,749fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
751,751fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
753,753fold
787,788fold
793,794fold
799,802fold
815,815fold
811,816fold
818,819fold
818,819fold
818,819fold
818,819fold
818,823fold
831,831fold
833,833fold
843,843fold
841,844fold
837,845fold
848,848fold
857,857fold
857,858fold
863,863fold
863,865fold
862,867fold
860,868fold
836,869fold
891,891fold
898,898fold
894,899fold
890,900fold
889,901fold
906,906fold
914,914fold
872,915fold
924,924fold
926,926fold
923,927fold
933,933fold
825,934fold
948,949fold
946,950fold
953,954fold
956,957fold
944,958fold
970,971fold
975,975fold
975,975fold
973,975fold
973,977fold
981,981fold
981,981fold
980,982fold
980,982fold
979,982fold
979,982fold
979,982fold
979,982fold
995,995fold
993,997fold
987,998fold
1000,1000fold
1007,1007fold
1007,1007fold
1006,1007fold
1023,1023fold
1026,1026fold
1029,1029fold
1015,1030fold
1010,1031fold
1033,1033fold
1003,1034fold
1036,1036fold
979,1037fold
1050,1050fold
1050,1052fold
1049,1054fold
1057,1059fold
1068,1068fold
1070,1070fold
1075,1076fold
1092,1092fold
1092,1094fold
1100,1101fold
1088,1102fold
1108,1109fold
1107,1109fold
1079,1110fold
1061,1111fold
1039,1112fold
1117,1117fold
970,1118fold
1120,1122fold
1126,1129fold
1134,1134fold
1143,1144fold
1146,1147fold
1151,1151fold
1154,1154fold
1157,1157fold
1160,1160fold
1139,1161fold
1169,1170fold
1175,1175fold
1172,1176fold
1180,1180fold
1182,1182fold
1182,1183fold
1186,1186fold
1189,1189fold
1192,1192fold
1180,1193fold
1163,1194fold
1207,1207fold
1216,1216fold
1220,1220fold
1222,1222fold
1225,1225fold
1220,1226fold
1203,1229fold
1138,1230fold
1234,1235fold
1237,1238fold
1232,1239fold
1246,1246fold
1255,1255fold
1258,1258fold
1254,1259fold
1276,1276fold
1278,1278fold
1282,1282fold
1284,1284fold
1288,1288fold
1290,1290fold
1281,1291fold
1297,1297fold
1297,1300fold
1296,1302fold
1272,1303fold
1134,1304fold
1308,1312fold
1314,1317fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1341,1342fold
1354,1354fold
1347,1355fold
1345,1356fold
1366,1367fold
1372,1373fold
1400,1401fold
1400,1401fold
1398,1401fold
1398,1401fold
1405,1405fold
1405,1405fold
1396,1405fold
1396,1405fold
1395,1405fold
1395,1405fold
1394,1405fold
1394,1405fold
1393,1405fold
1393,1405fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1407,1407fold
1388,1407fold
1409,1409fold
1420,1422fold
1435,1435fold
1435,1436fold
1440,1440fold
1445,1445fold
1445,1445fold
1445,1446fold
1440,1448fold
1432,1449fold
1453,1456fold
1463,1463fold
1465,1465fold
1467,1467fold
1471,1473fold
1462,1474fold
1483,1483fold
1485,1486fold
1478,1487fold
1493,1493fold
1497,1499fold
1495,1500fold
1489,1501fold
1514,1515fold
1520,1520fold
1520,1522fold
1512,1525fold
1528,1528fold
1508,1529fold
1531,1531fold
1531,1531fold
1531,1531fold
1531,1531fold
1531,1531fold
1531,1531fold
1535,1535fold
1538,1538fold
1545,1546fold
1531,1547fold
1507,1548fold
1458,1549fold
1420,1550fold
1561,1567fold
1561,1570fold
1575,1575fold
1575,1576fold
1581,1582fold
1581,1582fold
1581,1582fold
1581,1582fold
1581,1582fold
1581,1582fold
1581,1582fold
1589,1591fold
1572,1594fold
1603,1603fold
1601,1606fold
1609,1609fold
1388,1612fold
1619,1619fold
1619,1619fold
1619,1619fold
1619,1619fold
1619,1619fold
1619,1619fold
1619,1619fold
1615,1619fold
1625,1625fold
1614,1628fold
1632,1633fold
1363,1634fold
1642,1642fold
1649,1649fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1660,1660fold
1662,1666fold
1668,1670fold
1678,1678fold
1678,1678fold
1678,1678fold
1678,1678fold
1678,1678fold
1672,1680fold
1684,1684fold
1684,1684fold
1684,1684fold
1684,1684fold
1684,1684fold
1682,1686fold
1688,1689fold
1659,1690fold
1700,1700fold
1700,1700fold
1700,1700fold
1700,1700fold
1700,1700fold
1700,1700fold
1700,1700fold
1696,1700fold
1693,1701fold
1703,1703fold
1709,1709fold
1709,1709fold
1709,1709fold
1709,1709fold
1709,1709fold
1709,1709fold
1692,1709fold
1715,1715fold
1744,1749fold
1740,1751fold
1725,1752fold
1758,1758fold
744,1759fold
1773,1774fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1780,1780fold
1785,1785fold
1790,1790fold
1790,1790fold
1790,1790fold
1790,1790fold
1790,1790fold
1789,1790fold
1792,1792fold
1782,1795fold
1811,1811fold
1811,1811fold
1811,1811fold
1811,1811fold
1811,1811fold
1811,1811fold
1811,1811fold
1811,1811fold
1810,1811fold
1817,1817fold
1817,1817fold
1817,1817fold
1817,1817fold
1817,1817fold
1817,1817fold
1817,1817fold
1817,1817fold
1816,1817fold
1822,1822fold
1822,1822fold
1822,1822fold
1822,1822fold
1822,1822fold
1822,1822fold
1822,1822fold
1822,1822fold
1821,1822fold
1807,1823fold
1830,1830fold
1830,1830fold
1830,1830fold
1830,1830fold
1830,1830fold
1832,1832fold
1832,1832fold
1832,1832fold
1832,1832fold
1832,1832fold
1829,1832fold
1834,1834fold
1803,1837fold
1847,1847fold
1846,1849fold
1861,1861fold
1856,1863fold
1876,1876fold
1880,1881fold
1892,1895fold
1897,1899fold
1884,1903fold
1905,1905fold
1883,1907fold
1910,1910fold
1871,1913fold
1945,1945fold
1950,1950fold
1950,1951fold
1953,1953fold
1955,1955fold
1957,1957fold
1963,1964fold
1949,1965fold
1970,1972fold
1969,1975fold
1928,1978fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
1996,1996fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2008,2008fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2016,2017fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2047,2047fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2063,2063fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2068,2068fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2095,2095fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2097,2098fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2135,2135fold
2143,2148fold
2152,2152fold
2171,2171fold
2175,2176fold
2173,2177fold
2165,2178fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2182,2182fold
2192,2192fold
2194,2195fold
2187,2198fold
2185,2199fold
2207,2207fold
2207,2207fold
2207,2207fold
2207,2207fold
2207,2207fold
2207,2207fold
2207,2207fold
2207,2207fold
2207,2207fold
2206,2207fold
2206,2207fold
2206,2207fold
2206,2207fold
2203,2211fold
2215,2215fold
2221,2221fold
2225,2229fold
2239,2240fold
2246,2246fold
2254,2254fold
2257,2257fold
2225,2259fold
2267,2269fold
2271,2273fold
2279,2280fold
2277,2281fold
2285,2285fold
2288,2288fold
2292,2292fold
2290,2293fold
2287,2294fold
2298,2298fold
2298,2300fold
2302,2302fold
2306,2306fold
2308,2309fold
2304,2310fold
2297,2311fold
2283,2312fold
2317,2317fold
2317,2318fold
2323,2324fold
2264,2326fold
2328,2331fold
2328,2331fold
2328,2331fold
2328,2331fold
2334,2334fold
2334,2334fold
2334,2334fold
2334,2334fold
2333,2334fold
2336,2336fold
2339,2341fold
2345,2345fold
2328,2348fold
2161,2349fold
2356,2356fold
2358,2358fold
2360,2360fold
2355,2361fold
2363,2363fold
2354,2366fold
2369,2369fold
2378,2378fold
2380,2380fold
2380,2380fold
2380,2380fold
2380,2380fold
2380,2380fold
2380,2380fold
2380,2380fold
2380,2380fold
2380,2380fold
2388,2388fold
2391,2391fold
2391,2392fold
2394,2394fold
2390,2395fold
2382,2396fold
2398,2398fold
2378,2400fold
2375,2403fold
2413,2413fold
2418,2418fold
2422,2422fold
2426,2427fold
2436,2436fold
2443,2445fold
2449,2454fold
2456,2459fold
2447,2460fold
2434,2461fold
2466,2468fold
2466,2469fold
2475,2475fold
2473,2477fold
2483,2483fold
2486,2487fold
2489,2490fold
2481,2491fold
2465,2492fold
2500,2500fold
2502,2502fold
2507,2510fold
2520,2522fold
2520,2522fold
2520,2522fold
2520,2522fold
2520,2522fold
2520,2522fold
2520,2522fold
2520,2523fold
2534,2534fold
2529,2535fold
2543,2543fold
2545,2545fold
2550,2550fold
2569,2572fold
2580,2580fold
2574,2581fold
2587,2587fold
2555,2588fold
2505,2589fold
2599,2602fold
2604,2605fold
2598,2606fold
2609,2609fold
2597,2610fold
2620,2620fold
2620,2620fold
2622,2623fold
2625,2625fold
2633,2633fold
2636,2636fold
2636,2636fold
2636,2636fold
2636,2636fold
2636,2636fold
2636,2636fold
2636,2636fold
2638,2638fold
2648,2648fold
2650,2650fold
2653,2653fold
2653,2654fold
2656,2656fold
2661,2661fold
2663,2663fold
2660,2664fold
2667,2669fold
2647,2671fold
2674,2674fold
2620,2675fold
2681,2685fold
2691,2692fold
2704,2706fold
2712,2716fold
2710,2717fold
2725,2734fold
2721,2735fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2746,2749fold
2745,2749fold
2740,2750fold
2759,2759fold
2759,2759fold
2758,2759fold
2764,2764fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2767,2770fold
2764,2770fold
2778,2779fold
2784,2786fold
2781,2787fold
2791,2791fold
2791,2791fold
2791,2791fold
2791,2791fold
2794,2794fold
2793,2795fold
2802,2804fold
2798,2805fold
2773,2809fold
2811,2812fold
2818,2819fold
2822,2823fold
2828,2829fold
2834,2834fold
2834,2834fold
2831,2835fold
2831,2835fold
2831,2835fold
2831,2835fold
2831,2842fold
2772,2843fold
2758,2844fold
2754,2845fold
2849,2849fold
2853,2853fold
2853,2855fold
2857,2858fold
2866,2866fold
2870,2870fold
2876,2876fold
2880,2880fold
2878,2881fold
2884,2884fold
2889,2889fold
2866,2890fold
2863,2891fold
2899,2900fold
2902,2903fold
2906,2906fold
2908,2908fold
2897,2910fold
2920,2920fold
2926,2926fold
2930,2930fold
2913,2931fold
2895,2932fold
2940,2941fold
2945,2950fold
2952,2952fold
2936,2953fold
2703,2954fold
2958,2959fold
2963,2963fold
2966,2966fold
2966,2967fold
2969,2969fold
2965,2970fold
2958,2971fold
2976,2978fold
2976,2980fold
2987,2987fold
2989,2989fold
2976,2991fold
2995,2998fold
3007,3008fold
2995,3012fold
3016,3019fold
3016,3024fold
3028,3031fold
3028,3033fold
3040,3040fold
3040,3040fold
3042,3043fold
3042,3043fold
3039,3043fold
3046,3046fold
3039,3047fold
3050,3050fold
3050,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3050fold
3049,3052fold
3069,3069fold
3069,3071fold
3073,3073fold
3076,3076fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3079,3079fold
3081,3081fold
3081,3081fold
3083,3084fold
3088,3088fold
3094,3095fold
3094,3097fold
3099,3099fold
3083,3100fold
3105,3105fold
3105,3105fold
3105,3105fold
3105,3105fold
3105,3105fold
3105,3105fold
3105,3105fold
3116,3116fold
3118,3118fold
3122,3123fold
3114,3128fold
3102,3129fold
3081,3131fold
3134,3134fold
3068,3135fold
3146,3146fold
3146,3148fold
3150,3150fold
3153,3154fold
3157,3157fold
3145,3158fold
3162,3162fold
3162,3163fold
3169,3169fold
3056,3170fold
3175,3175fold
3175,3176fold
3179,3179fold
3179,3180fold
3187,3187fold
3187,3187fold
3187,3187fold
3187,3187fold
3187,3187fold
3187,3187fold
3187,3187fold
3187,3187fold
3187,3187fold
3186,3188fold
3185,3188fold
3174,3189fold
3196,3196fold
3198,3198fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3204fold
3203,3205fold
3209,3209fold
3211,3211fold
3207,3212fold
3037,3213fold
3230,3232fold
3234,3234fold
3227,3235fold
3245,3245fold
3247,3249fold
3252,3252fold
3257,3257fold
3266,3267fold
3265,3267fold
3257,3273fold
3275,3276fold
3237,3278fold
3226,3280fold
3282,3284fold
3302,3302fold
3312,3312fold
3309,3315fold
3298,3316fold
3320,3321fold
3326,3326fold
3337,3339fold
3320,3340fold
3342,3342fold
3351,3354fold
3356,3358fold
3344,3362fold
3364,3364fold
3370,3371fold
3370,3380fold
3382,3382fold
3393,3395fold
3388,3399fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3416,3416fold
3419,3420fold
3422,3422fold
3433,3434fold
3432,3434fold
3436,3436fold
3431,3437fold
3439,3439fold
3444,3444fold
3446,3446fold
3410,3447fold
3449,3449fold
3460,3460fold
3473,3473fold
3475,3475fold
3486,3490fold
3486,3492fold
3496,3496fold
3496,3500fold
3505,3505fold
3510,3510fold
3515,3515fold
3515,3515fold
3515,3515fold
3515,3515fold
3515,3515fold
3515,3515fold
3515,3515fold
3515,3515fold
3510,3515fold
3517,3518fold
3509,3519fold
3463,3520fold
3458,3521fold
3525,3525fold
3527,3527fold
3524,3528fold
3532,3532fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3537,3537fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3539,3539fold
3542,3542fold
3544,3544fold
3541,3545fold
3536,3546fold
3551,3551fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3558,3558fold
3557,3558fold
3564,3565fold
3568,3568fold
3563,3569fold
3551,3570fold
3576,3576fold
3579,3580fold
3579,3580fold
3576,3580fold
3576,3580fold
3575,3580fold
3587,3589fold
3591,3591fold
3575,3592fold
3596,3596fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3598,3598fold
3604,3606fold
3608,3608fold
3596,3609fold
3404,3610fold
3625,3625fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3629,3630fold
3633,3633fold
3640,3641fold
3645,3645fold
3645,3646fold
3654,3654fold
3664,3665fold
3672,3672fold
3663,3676fold
3683,3683fold
3635,3684fold
3702,3702fold
3702,3703fold
3688,3704fold
3710,3711fold
3710,3711fold
3713,3713fold
3715,3715fold
3723,3725fold
3709,3726fold
3728,3730fold
3620,3731fold
3739,3740fold
3739,3740fold
3739,3740fold
3735,3740fold
3735,3740fold
3734,3740fold
3734,3740fold
3733,3741fold
3733,3741fold
3733,3741fold
3733,3741fold
3746,3747fold
3750,3750fold
3750,3751fold
3753,3756fold
3746,3757fold
3760,3760fold
3762,3762fold
3770,3772fold
3774,3774fold
3733,3775fold
3779,3779fold
3782,3782fold
3787,3795fold
3797,3798fold
3777,3803fold
3805,3809fold
3805,3809fold
3805,3809fold
3805,3809fold
3805,3811fold
3617,3812fold
3817,3817fold
3817,3817fold
3820,3820fold
3820,3820fold
3816,3820fold
3824,3825fold
3824,3825fold
3823,3826fold
3830,3830fold
3832,3832fold
3834,3834fold
3836,3836fold
3842,3842fold
3847,3848fold
3850,3851fold
3846,3852fold
3823,3855fold
3857,3858fold
3862,3864fold
3866,3866fold
3816,3867fold
3869,3870fold
3874,3875fold
3286,3876fold
3882,3884fold
3886,3886fold
3888,3888fold
3882,3892fold
3897,3897fold
3904,3908fold
3912,3918fold
3922,3924fold
3926,3926fold
3904,3930fold
3939,3939fold
3948,3948fold
3953,3954fold
3952,3956fold
3950,3957fold
3962,3963fold
3962,3963fold
3961,3965fold
3961,3965fold
3960,3965fold
3970,3970fold
3969,3971fold
3974,3974fold
3973,3975fold
3978,3981fold
3983,3984fold
3994,3994fold
3994,3996fold
3998,3998fold
4001,4001fold
4001,4002fold
4005,4005fold
3993,4006fold
3987,4007fold
4012,4012fold
4016,4017fold
4019,4020fold
3960,4023fold
4027,4027fold
4029,4029fold
4034,4034fold
4042,4042fold
4049,4049fold
4049,4049fold
4049,4049fold
4049,4049fold
4049,4049fold
4049,4049fold
4049,4049fold
4049,4049fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4053,4053fold
4052,4053fold
4057,4060fold
4057,4062fold
4067,4067fold
4074,4074fold
4073,4075fold
4071,4076fold
4084,4084fold
4087,4087fold
4092,4092fold
4101,4101fold
4107,4107fold
4109,4109fold
4118,4118fold
4098,4121fold
4057,4122fold
4131,4135fold
4127,4136fold
4141,4141fold
4141,4141fold
4141,4141fold
4141,4141fold
4141,4141fold
4141,4141fold
4141,4141fold
4141,4141fold
4149,4153fold
3935,4155fold
4167,4168fold
4167,4168fold
4161,4168fold
4173,4175fold
4177,4177fold
4161,4178fold
4183,4183fold
4194,4199fold
4201,4201fold
4201,4203fold
4205,4206fold
4194,4207fold
4212,4212fold
4223,4225fold
4228,4228fold
4230,4230fold
4233,4234fold
4236,4236fold
4246,4246fold
4251,4251fold
4254,4256fold
4240,4257fold
4260,4261fold
4263,4264fold
4219,4265fold
4270,4270fold
4289,4290fold
4292,4293fold
4287,4296fold
4303,4304fold
4306,4307fold
4301,4308fold
4312,4313fold
4315,4316fold
4273,4317fold
4320,4322fold
4319,4323fold
4267,4324fold
4326,4326fold
4332,4332fold
4332,4333fold
4337,4337fold
4342,4342fold
4347,4347fold
4359,4359fold
4359,4359fold
4361,4361fold
4361,4361fold
4357,4361fold
4357,4361fold
4355,4361fold
4367,4367fold
4367,4367fold
4363,4368fold
4363,4368fold
4363,4368fold
4363,4368fold
4363,4368fold
4363,4368fold
4373,4373fold
4373,4373fold
4373,4373fold
4373,4373fold
4373,4373fold
4373,4373fold
4373,4373fold
4373,4373fold
4375,4383fold
4392,4393fold
4392,4394fold
4399,4400fold
4405,4406fold
4412,4413fold
4426,4426fold
4432,4432fold
4355,4433fold
2698,4434fold
4439,4440fold
1998,4444fold
4457,4458fold
4460,4461fold
4463,4463fold
4456,4464fold
4467,4467fold
4480,4480fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4487,4487fold
4484,4488fold
4491,4491fold
4479,4492fold
4497,4497fold
4499,4500fold
4502,4502fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4506,4506fold
4509,4509fold
4478,4510fold
4455,4512fold
4453,4513fold
4449,4514fold
4530,4532fold
4529,4533fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4544,4547fold
4553,4553fold
4555,4556fold
4570,4570fold
4568,4576fold
4585,4585fold
4585,4585fold
4585,4585fold
4585,4585fold
4585,4585fold
4585,4585fold
4578,4592fold
4564,4593fold
4562,4595fold
4560,4596fold
4601,4601fold
4603,4603fold
4549,4604fold
4622,4622fold
4622,4622fold
4622,4622fold
4622,4622fold
4622,4622fold
4622,4622fold
4622,4622fold
4621,4622fold
4621,4622fold
4619,4623fold
4619,4623fold
4618,4623fold
4618,4623fold
4618,4623fold
4618,4623fold
4617,4623fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4638,4638fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4655,4655fold
4661,4661fold
4664,4664fold
4671,4672fold
4684,4685fold
4684,4685fold
4684,4687fold
4691,4691fold
4691,4691fold
4691,4691fold
4691,4691fold
4691,4691fold
4690,4691fold
4683,4692fold
4681,4697fold
4703,4703fold
4702,4703fold
4701,4704fold
4712,4712fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4716,4717fold
4721,4721fold
4733,4734fold
4733,4734fold
4731,4734fold
4731,4734fold
4730,4734fold
4730,4735fold
4740,4740fold
4747,4747fold
4720,4748fold
4710,4753fold
4757,4760fold
4769,4770fold
4775,4776fold
4778,4778fold
4769,4780fold
4768,4783fold
4765,4784fold
4788,4790fold
4794,4794fold
4797,4797fold
4801,4801fold
4801,4801fold
4801,4801fold
4801,4801fold
4800,4801fold
4646,4802fold
4815,4817fold
4811,4818fold
4828,4829fold
4827,4830fold
4826,4831fold
4837,4837fold
4845,4846fold
4844,4847fold
4843,4848fold
4858,4858fold
4857,4859fold
4862,4862fold
4856,4863fold
4870,4870fold
4873,4873fold
4876,4876fold
4875,4877fold
4882,4882fold
4879,4884fold
4872,4885fold
4900,4900fold
4900,4900fold
4900,4900fold
4900,4900fold
4900,4900fold
4897,4900fold
4893,4901fold
4913,4913fold
4913,4913fold
4913,4913fold
4913,4913fold
4913,4913fold
4913,4913fold
4917,4917fold
4921,4923fold
4910,4926fold
4939,4939fold
4939,4939fold
4937,4939fold
4937,4939fold
4936,4939fold
4942,4942fold
4936,4945fold
4935,4947fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4958,4958fold
4979,4979fold
4985,4986fold
4991,4991fold
4993,4995fold
4999,4999fold
5002,5002fold
5012,5012fold
5010,5013fold
5016,5016fold
5006,5017fold
4997,5018fold
5024,5024fold
5022,5026fold
5021,5027fold
5033,5034fold
5036,5037fold
5044,5045fold
5051,5051fold
5051,5051fold
5051,5051fold
5051,5051fold
5053,5056fold
5062,5064fold
5066,5067fold
5059,5068fold
5058,5069fold
5072,5072fold
5079,5079fold
5043,5080fold
5084,5085fold
5097,5098fold
5100,5101fold
5094,5103fold
5109,5113fold
5105,5115fold
5093,5116fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5122,5122fold
5126,5127fold
5131,5131fold
5131,5131fold
5131,5131fold
5131,5131fold
5131,5131fold
5092,5131fold
4961,5135fold
5154,5155fold
5154,5156fold
5162,5163fold
5165,5167fold
5169,5170fold
5179,5181fold
5179,5182fold
5185,5186fold
5189,5190fold
5193,5194fold
5197,5198fold
5203,5203fold
5206,5207fold
5217,5217fold
5217,5218fold
5222,5224fold
5209,5225fold
5231,5231fold
5231,5231fold
5231,5231fold
5231,5231fold
5231,5231fold
5234,5234fold
5236,5236fold
5236,5236fold
5236,5236fold
5236,5236fold
5236,5236fold
5234,5236fold
5172,5239fold
5247,5247fold
5249,5249fold
5246,5251fold
5143,5253fold
5268,5268fold
5280,5280fold
5280,5280fold
5280,5280fold
5280,5280fold
5280,5280fold
5280,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5279,5280fold
5275,5280fold
5262,5283fold
5298,5298fold
5297,5299fold
5302,5302fold
5301,5303fold
5296,5305fold
5292,5307fold
5321,5321fold
5339,5339fold
5341,5341fold
5338,5342fold
5345,5345fold
5325,5347fold
5318,5349fold
5383,5383fold
5389,5395fold
5406,5406fold
5410,5410fold
5409,5411fold
5414,5414fold
5405,5415fold
5419,5419fold
5423,5427fold
5402,5430fold
5433,5433fold
5435,5435fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5438,5438fold
5432,5438fold
5397,5441fold
5445,5445fold
5459,5459fold
5459,5459fold
5459,5459fold
5459,5459fold
5459,5459fold
5459,5459fold
5459,5459fold
5459,5459fold
5458,5459fold
5471,5472fold
5490,5490fold
5492,5492fold
5494,5494fold
5496,5496fold
5484,5497fold
5501,5501fold
5501,5501fold
5501,5501fold
5501,5501fold
5501,5501fold
5511,5511fold
5516,5516fold
5514,5519fold
5522,5522fold
5506,5523fold
5358,5524fold
5527,5527fold
5534,5534fold
5549,5549fold
5552,5552fold
5555,5555fold
5547,5557fold
5562,5564fold
5567,5570fold
5561,5571fold
5577,5577fold
5580,5581fold
5575,5584fold
5532,5585fold
5594,5595fold
5601,5603fold
5612,5612fold
5611,5614fold
5609,5617fold
5623,5623fold
5629,5629fold
5634,5634fold
5641,5641fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5653,5653fold
5650,5653fold
5665,5665fold
5665,5666fold
5660,5668fold
5674,5677fold
5690,5692fold
5684,5693fold
5703,5703fold
5717,5721fold
5729,5734fold
5726,5735fold
5763,5764fold
5763,5765fold
5769,5770fold
5773,5773fold
5772,5774fold
5781,5783fold
5788,5789fold
5788,5789fold
5793,5793fold
5795,5795fold
5798,5798fold
5800,5800fold
5806,5808fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5811,5811fold
5810,5812fold
5804,5816fold
5818,5818fold
5821,5824fold
5832,5834fold
5832,5834fold
5832,5834fold
5832,5834fold
5832,5834fold
5832,5834fold
5832,5834fold
5843,5843fold
5845,5845fold
5845,5845fold
5845,5845fold
5845,5845fold
5845,5845fold
5847,5847fold
5849,5850fold
5849,5850fold
5847,5850fold
5847,5850fold
5845,5850fold
5845,5850fold
5845,5850fold
5845,5850fold
5845,5851fold
5857,5858fold
5837,5861fold
5868,5870fold
5788,5871fold
5875,5875fold
5742,5876fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5891,5891fold
5890,5891fold
5895,5895fold
5895,5895fold
5895,5895fold
5895,5895fold
5894,5895fold
5898,5898fold
5897,5899fold
5889,5902fold
5887,5905fold
5914,5917fold
5913,5918fold
5927,5928fold
5926,5929fold
5937,5937fold
5945,5945fold
5947,5947fold
5943,5954fold
5939,5961fold
5968,5968fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5973,5973fold
5982,5983fold
5985,5985fold
5988,5989fold
5992,5993fold
5995,5995fold
5992,5996fold
5991,5997fold
6000,6000fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6003,6003fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6006,6006fold
6008,6008fold
6008,6008fold
6008,6008fold
6008,6008fold
6008,6008fold
6008,6008fold
6008,6008fold
6012,6013fold
6012,6013fold
6012,6013fold
6012,6013fold
6012,6013fold
6012,6013fold
6012,6013fold
6012,6013fold
6012,6013fold
6011,6014fold
6016,6017fold
6006,6018fold
5988,6019fold
6022,6022fold
5981,6023fold
5970,6024fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6038fold
6038,6039fold
6048,6049fold
6059,6059fold
6061,6061fold
6053,6062fold
6073,6074fold
6082,6082fold
6085,6085fold
6085,6085fold
6084,6085fold
6084,6085fold
6084,6085fold
6084,6085fold
6091,6093fold
6084,6095fold
6097,6097fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6105,6107fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6111,6111fold
6114,6114fold
6119,6121fold
6117,6126fold
6102,6127fold
6129,6129fold
6132,6133fold
6136,6138fold
6136,6140fold
6071,6144fold
6041,6145fold
6154,6154fold
6164,6164fold
6167,6167fold
6174,6177fold
6171,6178fold
6180,6180fold
6170,6181fold
6161,6182fold
6187,6187fold
6187,6187fold
6187,6187fold
6187,6187fold
6187,6187fold
6187,6187fold
6187,6187fold
6187,6187fold
6189,6189fold
6189,6189fold
6189,6189fold
6189,6189fold
6189,6189fold
6189,6189fold
6189,6189fold
6186,6198fold
6156,6200fold
6208,6208fold
6208,6208fold
6208,6208fold
6208,6208fold
6208,6208fold
6208,6208fold
6208,6208fold
6221,6221fold
6224,6224fold
6229,6229fold
6238,6238fold
6241,6241fold
6241,6242fold
6257,6257fold
6261,6261fold
6257,6263fold
6266,6266fold
6255,6267fold
6272,6273fold
6279,6279fold
6281,6281fold
6284,6284fold
6275,6285fold
6287,6288fold
6270,6289fold
6293,6293fold
6233,6294fold
6210,6295fold
6305,6306fold
6311,6311fold
6305,6312fold
6304,6313fold
6339,6341fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6346,6347fold
6349,6349fold
6349,6349fold
6349,6349fold
6349,6349fold
6349,6349fold
6352,6352fold
6346,6354fold
6356,6360fold
6362,6363fold
6370,6372fold
6374,6376fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6385,6385fold
6384,6385fold
6323,6386fold
6396,6396fold
6392,6397fold
6416,6416fold
6412,6420fold
6427,6432fold
6427,6434fold
6447,6447fold
6466,6466fold
6490,6493fold
6423,6496fold
6532,6533fold
6532,6533fold
6532,6533fold
6532,6533fold
6535,6536fold
6535,6536fold
6535,6536fold
6535,6536fold
6530,6536fold
6525,6537fold
6519,6538fold
6546,6550fold
6501,6551fold
6556,6564fold
6570,6572fold
6584,6584fold
6583,6585fold
6582,6587fold
6581,6588fold
6599,6599fold
6605,6605fold
6605,6605fold
6605,6605fold
6605,6605fold
6605,6605fold
6605,6605fold
6605,6605fold
6605,6605fold
6604,6606fold
6622,6622fold
6621,6623fold
6626,6626fold
6635,6638fold
6593,6639fold
6647,6647fold
6646,6650fold
6655,6655fold
6660,6660fold
6672,6672fold
6672,6672fold
6672,6672fold
6672,6672fold
6674,6674fold
6674,6674fold
6674,6674fold
6674,6674fold
6668,6674fold
6693,6693fold
6693,6693fold
6692,6693fold
6692,6693fold
6692,6693fold
6689,6693fold
6683,6697fold
6682,6698fold
6708,6708fold
6713,6713fold
6718,6718fold
6718,6718fold
6718,6718fold
6718,6718fold
6718,6718fold
6718,6718fold
6718,6718fold
6717,6718fold
6721,6721fold
6721,6721fold
6721,6721fold
6721,6721fold
6721,6721fold
6721,6721fold
6721,6721fold
6720,6721fold
6707,6722fold
6754,6754fold
6764,6764fold
6761,6768fold
6773,6774fold
6770,6778fold
6760,6779fold
6783,6783fold
6744,6786fold
6805,6805fold
6815,6815fold
6812,6819fold
6825,6826fold
6821,6830fold
6811,6831fold
6835,6835fold
6795,6838fold
6857,6857fold
6867,6869fold
6867,6869fold
6866,6869fold
6866,6869fold
6866,6869fold
6866,6869fold
6866,6869fold
6875,6876fold
6887,6887fold
6908,6908fold
6910,6910fold
6913,6913fold
6917,6917fold
6921,6921fold
6920,6923fold
6928,6928fold
6930,6930fold
6926,6932fold
6916,6933fold
6904,6934fold
6937,6937fold
6939,6939fold
6941,6941fold
6944,6944fold
6943,6946fold
6948,6948fold
6948,6948fold
6948,6948fold
6948,6948fold
6948,6949fold
6951,6951fold
6953,6953fold
6956,6956fold
6960,6960fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6962fold
6962,6963fold
6959,6964fold
6967,6967fold
6976,6977fold
6976,6977fold
6976,6977fold
6976,6977fold
6979,6979fold
6981,6981fold
6983,6983fold
6985,6985fold
6987,6987fold
6989,6989fold
6971,6991fold
6936,6993fold
6901,6996fold
6999,7000fold
6999,7002fold
7007,7007fold
6871,7014fold
7016,7017fold
7025,7025fold
7032,7032fold
6850,7037fold
7045,7046fold
7056,7056fold
7058,7058fold
7054,7059fold
7071,7071fold
7065,7077fold
7084,7086fold
7082,7087fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7111,7111fold
7095,7112fold
7114,7114fold
7119,7120fold
7124,7124fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7142,7142fold
7141,7142fold
7134,7144fold
7147,7147fold
7151,7151fold
7155,7155fold
7163,7163fold
7169,7170fold
7172,7173fold
7178,7178fold
7181,7181fold
7185,7185fold
7194,7194fold
7193,7195fold
7204,7204fold
7207,7207fold
7207,7207fold
7207,7207fold
7207,7207fold
7207,7207fold
7207,7207fold
7207,7207fold
7201,7208fold
7211,7211fold
7200,7213fold
7224,7225fold
7228,7228fold
7218,7232fold
7241,7243fold
7240,7244fold
7162,7245fold
7249,7249fold
7251,7251fold
7259,7261fold
7257,7262fold
7146,7263fold
7095,7268fold
7275,7282fold
7289,7289fold
7287,7298fold
7273,7301fold
7311,7311fold
7313,7313fold
7310,7315fold
7326,7327fold
7329,7330fold
7336,7336fold
7336,7337fold
7336,7337fold
7336,7337fold
7336,7337fold
7336,7337fold
7336,7337fold
7336,7337fold
7336,7337fold
7336,7338fold
7341,7341fold
7323,7343fold
7352,7353fold
7362,7362fold
7362,7362fold
7362,7362fold
7361,7362fold
7370,7370fold
7379,7379fold
7382,7382fold
7384,7384fold
7388,7389fold
7388,7390fold
7394,7394fold
7378,7395fold
7404,7404fold
7412,7412fold
7419,7419fold
7418,7420fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7430,7430fold
7429,7430fold
7424,7433fold
7441,7441fold
7441,7442fold
7450,7458fold
7467,7471fold
7473,7477fold
7483,7485fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7497,7497fold
7496,7497fold
7496,7497fold
7496,7497fold
7496,7497fold
7496,7497fold
7496,7497fold
7500,7501fold
7500,7501fold
7500,7501fold
7500,7501fold
7500,7501fold
7512,7512fold
7516,7516fold
7521,7521fold
7526,7527fold
7524,7529fold
7533,7539fold
7542,7543fold
7550,7551fold
7548,7552fold
7558,7559fold
7558,7559fold
7558,7559fold
7558,7559fold
7558,7559fold
7541,7559fold
7450,7567fold
7400,7568fold
7582,7583fold
7585,7586fold
7590,7590fold
7596,7597fold
7602,7602fold
7608,7608fold
7608,7609fold
7578,7613fold
7632,7632fold
7632,7635fold
7645,7645fold
7648,7648fold
7620,7656fold
7667,7667fold
7671,7671fold
7675,7677fold
7685,7685fold
7695,7695fold
7710,7710fold
7729,7729fold
7732,7732fold
7729,7737fold
7740,7740fold
7747,7747fold
7743,7748fold
7752,7756fold
7760,7760fold
7750,7761fold
7739,7762fold
7714,7764fold
7662,7766fold
7774,7775fold
7773,7777fold
7784,7784fold
7786,7786fold
7790,7790fold
7783,7791fold
7803,7803fold
7800,7806fold
7809,7810fold
7796,7811fold
7818,7818fold
7817,7819fold
7816,7821fold
let &fdl = &fdl
7095
normal! zo
7095
normal! zo
7095
normal! zc
7134
normal! zo
7141
normal! zo
7134
normal! zc
let s:l = 7146 - ((55 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7146
normal! 01|
wincmd w
argglobal
enew
balt src/nvim/screen.c
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
let &fdl = &fdl
324
normal! zo
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zo
396
normal! zc
395
normal! zc
414
normal! zo
417
normal! zc
442
normal! zc
414
normal! zc
446
normal! zc
550
normal! zo
550
normal! zc
589
normal! zo
590
normal! zc
589
normal! zc
7095
normal! zo
7095
normal! zc
7134
normal! zc
7146
normal! zo
7146
normal! zc
let s:l = 7093 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7093
normal! 023|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
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
1388,1390fold
1392,1404fold
1408,1559fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1583,1593fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
1583
normal! zo
let s:l = 1581 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1581
normal! 051|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
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
1388,1390fold
1392,1404fold
1408,1559fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1583,1593fold
1998,2696fold
2698,2974fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
1583
normal! zo
let s:l = 2981 - ((987 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2981
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 70 + 136) / 272)
exe '2resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 70 + 136) / 272)
exe '3resize ' . ((&lines * 47 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 70 + 136) / 272)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 130 + 136) / 272)
exe '5resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 130 + 136) / 272)
tabnext
edit CMakeLists.txt
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe '1resize ' . ((&lines * 13 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 272)
exe '2resize ' . ((&lines * 13 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 195 + 136) / 272)
exe '3resize ' . ((&lines * 35 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 136 + 136) / 272)
exe '4resize ' . ((&lines * 35 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 135 + 136) / 272)
argglobal
if bufexists("term://~/projects/neovim//118653:/bin/bash") | buffer term://~/projects/neovim//118653:/bin/bash | else | edit term://~/projects/neovim//118653:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/projects/neovim//118653:/bin/bash
endif
balt CMakeLists.txt
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 96 - ((12 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 96
normal! 0
wincmd w
argglobal
if bufexists("term://~/projects/neovim//118722:/bin/bash") | buffer term://~/projects/neovim//118722:/bin/bash | else | edit term://~/projects/neovim//118722:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/projects/neovim//118722:/bin/bash
endif
balt term://~/projects/neovim//118653:/bin/bash
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4
normal! 053|
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
38
normal! zo
46
normal! zo
52
normal! zo
let s:l = 121 - ((23 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 121
normal! 08|
wincmd w
argglobal
if bufexists("CMakeLists.txt") | buffer CMakeLists.txt | else | edit CMakeLists.txt | endif
if &buftype ==# 'terminal'
  silent file CMakeLists.txt
endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
38
normal! zo
46
normal! zo
52
normal! zo
let s:l = 57 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 57
normal! 048|
wincmd w
exe '1resize ' . ((&lines * 13 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 76 + 136) / 272)
exe '2resize ' . ((&lines * 13 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 195 + 136) / 272)
exe '3resize ' . ((&lines * 35 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 136 + 136) / 272)
exe '4resize ' . ((&lines * 35 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 135 + 136) / 272)
tabnext
edit src/nvim/buffer_defs.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
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
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 66 + 136) / 272)
exe '2resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 92 + 136) / 272)
exe '3resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 112 + 136) / 272)
exe '4resize ' . ((&lines * 11 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 92 + 136) / 272)
exe '5resize ' . ((&lines * 11 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 112 + 136) / 272)
exe '6resize ' . ((&lines * 12 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 205 + 136) / 272)
argglobal
balt src/nvim/globals.h
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
929
normal! zo
let s:l = 930 - ((23 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 930
normal! 03|
wincmd w
argglobal
if bufexists("src/nvim/screen.h") | buffer src/nvim/screen.h | else | edit src/nvim/screen.h | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.h
endif
balt src/nvim/grid_defs.h
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 31 - ((14 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 040|
wincmd w
argglobal
if bufexists("src/nvim/grid_defs.h") | buffer src/nvim/grid_defs.h | else | edit src/nvim/grid_defs.h | endif
if &buftype ==# 'terminal'
  silent file src/nvim/grid_defs.h
endif
balt src/nvim/screen.h
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 60 - ((13 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 60
normal! 03|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
7146,7160fold
7165,7176fold
7162,7179fold
let &fdl = &fdl
7095
normal! zo
7095
normal! zo
7095
normal! zc
7146
normal! zo
7146
normal! zo
7146
normal! zc
7162
normal! zo
7162
normal! zc
let s:l = 7162 - ((69 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7162
normal! 01|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/globals.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
7146,7160fold
7165,7176fold
7162,7179fold
let &fdl = &fdl
let s:l = 7182 - ((89 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7182
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
7146,7160fold
7165,7176fold
7162,7179fold
let &fdl = &fdl
7095
normal! zo
7095
normal! zo
7095
normal! zc
7146
normal! zo
7146
normal! zo
7146
normal! zc
7162
normal! zo
7162
normal! zc
let s:l = 5676 - ((4 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5676
normal! 029|
wincmd w
exe 'vert 1resize ' . ((&columns * 66 + 136) / 272)
exe '2resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 92 + 136) / 272)
exe '3resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 112 + 136) / 272)
exe '4resize ' . ((&lines * 11 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 92 + 136) / 272)
exe '5resize ' . ((&lines * 11 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 112 + 136) / 272)
exe '6resize ' . ((&lines * 12 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 205 + 136) / 272)
tabnext
edit src/nvim/grid_defs.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
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
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
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
exe '1resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 66 + 136) / 272)
exe '2resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 66 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 112 + 136) / 272)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 92 + 136) / 272)
exe '5resize ' . ((&lines * 6 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 92 + 136) / 272)
exe '6resize ' . ((&lines * 7 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 92 + 136) / 272)
exe '7resize ' . ((&lines * 17 + 26) / 53)
exe 'vert 7resize ' . ((&columns * 92 + 136) / 272)
argglobal
balt src/nvim/screen.c
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 47 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 47
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
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
1388,1390fold
1392,1404fold
1408,1559fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1583,1593fold
2006,2696fold
1998,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
1583
normal! zo
1998
normal! zo
2698
normal! zo
2976
normal! zo
2698
normal! zc
let s:l = 1994 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1994
normal! 07|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/ui.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
1363,1386fold
1388,1390fold
1392,1404fold
1408,1559fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1583,1593fold
1998,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
2698
normal! zo
2698
normal! zc
2698
normal! zc
let s:l = 4640 - ((12 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 4640
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
7165,7176fold
let &fdl = &fdl
324
normal! zo
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zo
396
normal! zc
395
normal! zc
414
normal! zo
417
normal! zc
442
normal! zc
414
normal! zc
446
normal! zc
550
normal! zo
550
normal! zc
589
normal! zo
590
normal! zc
589
normal! zc
7095
normal! zo
7095
normal! zc
7134
normal! zc
7146
normal! zo
7146
normal! zc
7165
normal! zc
let s:l = 7161 - ((66 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7161
normal! 09|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
let &fdl = &fdl
324
normal! zo
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zo
396
normal! zc
395
normal! zc
414
normal! zo
417
normal! zc
442
normal! zc
414
normal! zc
446
normal! zc
550
normal! zo
550
normal! zc
589
normal! zo
590
normal! zc
589
normal! zc
7095
normal! zo
7095
normal! zc
7134
normal! zc
7146
normal! zo
7146
normal! zc
let s:l = 5672 - ((0 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5672
normal! 06|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
let &fdl = &fdl
324
normal! zo
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zo
396
normal! zc
395
normal! zc
414
normal! zo
417
normal! zc
442
normal! zc
414
normal! zc
446
normal! zc
550
normal! zo
550
normal! zc
589
normal! zo
590
normal! zc
589
normal! zc
7095
normal! zo
7095
normal! zc
7134
normal! zc
7146
normal! zo
7146
normal! zc
let s:l = 5703 - ((3 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5703
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
let &fdl = &fdl
324
normal! zo
324
normal! zo
324
normal! zc
382
normal! zc
392
normal! zc
395
normal! zo
396
normal! zc
395
normal! zc
414
normal! zo
417
normal! zc
442
normal! zc
414
normal! zc
446
normal! zc
550
normal! zo
550
normal! zc
589
normal! zo
590
normal! zc
589
normal! zc
7095
normal! zo
7095
normal! zc
7134
normal! zc
7146
normal! zo
7146
normal! zc
let s:l = 5742 - ((2 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5742
normal! 010|
wincmd w
exe '1resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 66 + 136) / 272)
exe '2resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 66 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 112 + 136) / 272)
exe '4resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 92 + 136) / 272)
exe '5resize ' . ((&lines * 6 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 92 + 136) / 272)
exe '6resize ' . ((&lines * 7 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 92 + 136) / 272)
exe '7resize ' . ((&lines * 17 + 26) / 53)
exe 'vert 7resize ' . ((&columns * 92 + 136) / 272)
tabnext
edit src/nvim/screen.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
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
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
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
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 51 + 136) / 272)
exe '2resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 51 + 136) / 272)
exe '3resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 27 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 19 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 49 + 136) / 272)
exe '7resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 7resize ' . ((&columns * 59 + 136) / 272)
exe '8resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 8resize ' . ((&columns * 49 + 136) / 272)
exe '9resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 9resize ' . ((&columns * 159 + 136) / 272)
argglobal
balt src/nvim/grid_defs.h
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 31 - ((11 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 31
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/grid_defs.h") | buffer src/nvim/grid_defs.h | else | edit src/nvim/grid_defs.h | endif
if &buftype ==# 'terminal'
  silent file src/nvim/grid_defs.h
endif
balt term://~/projects/neovim//118909:/bin/bash
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 47 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 47
normal! 0
wincmd w
argglobal
enew
balt src/nvim/screen.c
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
7146,7160fold
7165,7176fold
7162,7179fold
7189,7198fold
let &fdl = &fdl
let s:l = 7211 - ((65 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7211
normal! 011|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,380fold
324,381fold
382,390fold
392,393fold
396,399fold
395,399fold
417,440fold
442,444fold
414,445fold
446,539fold
324,540fold
550,587fold
590,591fold
589,600fold
550,600fold
1392,1404fold
1408,1559fold
1569,1571fold
1569,1571fold
1569,1571fold
1407,1572fold
7095,7131fold
7134,7144fold
7095,7144fold
7095,7144fold
7149,7157fold
7146,7160fold
7146,7160fold
7165,7176fold
7162,7179fold
let &fdl = &fdl
let s:l = 5738 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5738
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
744,1361fold
1380,1386fold
1363,1386fold
1388,1390fold
1392,1404fold
1388,1404fold
1363,1406fold
1408,1559fold
1408,1559fold
1562,1566fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1568,1570fold
1572,1578fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
744
normal! zo
744
normal! zc
1363
normal! zo
1363
normal! zo
1380
normal! zc
1388
normal! zo
1388
normal! zc
1363
normal! zc
1408
normal! zo
1408
normal! zc
1561
normal! zo
1562
normal! zc
1568
normal! zo
1568
normal! zo
1568
normal! zo
1568
normal! zc
1572
normal! zc
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4362
normal! zc
let s:l = 1580 - ((847 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1580
normal! 015|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
324,587fold
744,1361fold
744,1361fold
1380,1386fold
1363,1386fold
1388,1390fold
1392,1404fold
1388,1404fold
1363,1406fold
1408,1559fold
1408,1559fold
1562,1566fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1568,1570fold
1572,1578fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
324
normal! zc
744
normal! zo
744
normal! zc
1363
normal! zo
1363
normal! zo
1380
normal! zc
1388
normal! zo
1388
normal! zc
1363
normal! zc
1408
normal! zo
1408
normal! zc
1561
normal! zo
1562
normal! zc
1568
normal! zo
1568
normal! zo
1568
normal! zo
1568
normal! zc
1572
normal! zc
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4362
normal! zc
let s:l = 588 - ((272 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 588
normal! 03|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
744,1361fold
1380,1386fold
1363,1386fold
1388,1390fold
1392,1404fold
1388,1404fold
1363,1406fold
1408,1559fold
1408,1559fold
1562,1566fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1568,1570fold
1572,1578fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
744
normal! zo
744
normal! zc
1363
normal! zo
1363
normal! zo
1380
normal! zc
1388
normal! zo
1388
normal! zc
1363
normal! zc
1408
normal! zo
1408
normal! zc
1561
normal! zo
1562
normal! zc
1568
normal! zo
1568
normal! zo
1568
normal! zo
1568
normal! zc
1572
normal! zc
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4362
normal! zc
let s:l = 6333 - ((13 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6333
normal! 07|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
1363,1386fold
1388,1390fold
1392,1404fold
1408,1559fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4356,4360fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
1568
normal! zo
1568
normal! zo
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4356
normal! zc
4362
normal! zc
let s:l = 1995 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1995
normal! 012|
wincmd w
exe '1resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 1resize ' . ((&columns * 51 + 136) / 272)
exe '2resize ' . ((&lines * 24 + 26) / 53)
exe 'vert 2resize ' . ((&columns * 51 + 136) / 272)
exe '3resize ' . ((&lines * 1 + 26) / 53)
exe 'vert 3resize ' . ((&columns * 60 + 136) / 272)
exe '4resize ' . ((&lines * 27 + 26) / 53)
exe 'vert 4resize ' . ((&columns * 60 + 136) / 272)
exe '5resize ' . ((&lines * 19 + 26) / 53)
exe 'vert 5resize ' . ((&columns * 60 + 136) / 272)
exe '6resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 6resize ' . ((&columns * 49 + 136) / 272)
exe '7resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 7resize ' . ((&columns * 59 + 136) / 272)
exe '8resize ' . ((&lines * 32 + 26) / 53)
exe 'vert 8resize ' . ((&columns * 49 + 136) / 272)
exe '9resize ' . ((&lines * 16 + 26) / 53)
exe 'vert 9resize ' . ((&columns * 159 + 136) / 272)
tabnext
edit src/nvim/grid_defs.h
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
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
exe 'vert 1resize ' . ((&columns * 36 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 83 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 93 + 136) / 272)
exe 'vert 4resize ' . ((&columns * 57 + 136) / 272)
argglobal
balt src/nvim/screen.c
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 52 - ((7 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 52
normal! 03|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/globals.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
744,1361fold
1380,1386fold
1363,1386fold
1388,1390fold
1392,1404fold
1388,1404fold
1363,1406fold
1408,1559fold
1408,1559fold
1562,1566fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1568,1570fold
1572,1578fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
744
normal! zo
744
normal! zc
1363
normal! zo
1363
normal! zo
1380
normal! zc
1388
normal! zo
1388
normal! zc
1363
normal! zc
1408
normal! zo
1408
normal! zc
1561
normal! zo
1562
normal! zc
1568
normal! zo
1568
normal! zo
1568
normal! zo
1568
normal! zc
1572
normal! zc
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4362
normal! zc
let s:l = 588 - ((3 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 588
normal! 03|
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/screen.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
744,1361fold
1380,1386fold
1363,1386fold
1388,1390fold
1392,1404fold
1388,1404fold
1363,1406fold
1408,1559fold
1408,1559fold
1562,1566fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1568,1570fold
1572,1578fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
744
normal! zo
744
normal! zc
1363
normal! zo
1363
normal! zo
1380
normal! zc
1388
normal! zo
1388
normal! zc
1363
normal! zc
1408
normal! zo
1408
normal! zc
1561
normal! zo
1562
normal! zc
1568
normal! zo
1568
normal! zo
1568
normal! zo
1568
normal! zc
1572
normal! zc
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4362
normal! zc
let s:l = 6321 - ((5 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6321
normal! 0
wincmd w
argglobal
if bufexists("src/nvim/screen.c") | buffer src/nvim/screen.c | else | edit src/nvim/screen.c | endif
if &buftype ==# 'terminal'
  silent file src/nvim/screen.c
endif
balt src/nvim/main.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
744,1361fold
744,1361fold
1380,1386fold
1363,1386fold
1388,1390fold
1392,1404fold
1388,1404fold
1363,1406fold
1408,1559fold
1408,1559fold
1562,1566fold
1561,1566fold
1568,1570fold
1568,1570fold
1568,1570fold
1568,1570fold
1572,1578fold
1583,1593fold
1998,2004fold
2006,2696fold
2698,2974fold
2976,3932fold
2698,3933fold
3937,4137fold
2698,4353fold
4362,4371fold
4646,4708fold
4710,4718fold
let &fdl = &fdl
744
normal! zo
744
normal! zc
1363
normal! zo
1363
normal! zo
1380
normal! zc
1388
normal! zo
1388
normal! zc
1363
normal! zc
1408
normal! zo
1408
normal! zc
1561
normal! zo
1562
normal! zc
1568
normal! zo
1568
normal! zo
1568
normal! zo
1568
normal! zc
1572
normal! zc
1998
normal! zc
2006
normal! zc
2698
normal! zo
2698
normal! zo
2698
normal! zc
4362
normal! zc
let s:l = 6506 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6506
normal! 03|
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 36 + 136) / 272)
exe 'vert 2resize ' . ((&columns * 83 + 136) / 272)
exe 'vert 3resize ' . ((&columns * 93 + 136) / 272)
exe 'vert 4resize ' . ((&columns * 57 + 136) / 272)
tabnext 12
set stal=1
badd +1 term://~/Projects/neovim//10841:/bin/bash
badd +1598 ~/.vimrc
badd +1 src/nvim/diff.c
badd +555 src/nvim/screen.c
badd +1 todo.txt
badd +941 src/nvim/buffer_defs.h
badd +451 src/nvim/globals.h
badd +1 build/include/diff.h.generated.h
badd +31 src/nvim/screen.h
badd +18 src/nvim/types.h
badd +120 CMakeLists.txt
badd +96 term://~/projects/neovim//118653:/bin/bash
badd +0 term://~/projects/neovim//118722:/bin/bash
badd +63 src/nvim/grid_defs.h
badd +129 term://~/projects/neovim//118909:/bin/bash
badd +374 src/nvim/ui.c
badd +1472 src/nvim/main.c
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
