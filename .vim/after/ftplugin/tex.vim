set wrap
set display+=lastline
set linebreak
nnoremap <buffer> j gj
nnoremap <buffer> k gk

fun! GotoInPDF()
	" first see if semantic color is already on
	let cmdstr="!zathura --synctex-forward ".getcurpos()[1].":".getcurpos()[4].":".expand("%:t:r").".tex ".expand("%:t:r").".pdf & disown"
	:execute cmdstr
endfun
" snippet
nnoremap <buffer> <leader>meeting :-1read ~/.vim/snippet/meeting.tex<CR>

nnoremap <buffer> <F10> <Esc>:w<CR>:!clear;pdflatex %<CR>

" begin and end tag
inoremap <buffer> ;t <ESC>bdEa\begin{<C-R>"}<CR>\end{<C-R>"}<ESC>kA{}()<C-O>T{

" frame
inoremap <buffer> ;frame \begin{frame}<cr>\end{frame}<Esc>O\frametitle{<++>}<CR><++><Esc><Esc>:call JumptoNext("?", "frametitle")<cr> :call JumptoNext("/", "<++>")<cr>"_c4l
" textblock
inoremap <buffer> ;text \begin{textblock*}{<++>cm}(<++>cm,<++>cm)<cr><++><cr>\end{textblock*}<Esc>:call JumptoNext("?", "begin")<cr> :call JumptoNext("/", "<++>")<cr>"_c4l
" include graphics
inoremap <buffer> ;incl \includegraphics[trim=0cm 0cm 0cm 0cm, clip, height=<++>cm]{<++>}<Esc> :call JumptoNext("?", "includegraphics")<cr> :call JumptoNext("/", "<++>")<cr>"_c4l
" itemize
inoremap <buffer> ;item \begin{itemize}<CR>\end{itemize}<Esc>O\item{}<Esc>i
nnoremap <buffer> <leader><c-]> :call GotoInPDF()<CR>

set makeprg=pdflatex\ %
compiler tex

" remove stupid highlights
hi clear texItalStyle
hi clear texItalBoldStyle

" augroup my_tex
"     au!
"     au BufWinEnter <buffer> setlocal foldmethod=indent
"     au BufWinEnter <buffer> setlocal shiftwidth=2
"     au BufWinEnter <buffer> setlocal softtabstop=2
"     au BufWinEnter <buffer> let foldlevelstart=1
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_tex * <buffer>'
"     \ "
