fun! PythonComment()
	" save old search
	let old = @/
	" comment
	:silent! execute ':s/\(^\s*\)\@<=\S.*/# &'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! PythonUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/# //'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

" comment
vnoremap <buffer> <leader>c :call PythonComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call PythonUnComment()<CR>

" fold settings (foldignore fixes python folding)

" set breakpoints
inoremap <buffer> ;bR from pudb import set_trace;set_trace();print("BREAKPOINT")<Esc>
inoremap <buffer> ;br import ipdb;ipdb.set_trace();print("BREAKPOINT")<Esc>
inoremap <buffer> ;pf <ESC>:-1read ~/.vim/snippet/print_python_variables.py<CR>
inoremap <buffer> ;de print_debug_variables(locals())<ESC>

"  python print command
noremap <buffer> <leader>pv ^v$hxaprint("pa =>"a, pa)^
noremap <buffer> <leader>pp Iprint(<Esc>A)<Esc>
noremap <buffer> <leader>pns Inp.shape(<Esc>A)<Esc>^v$hxaprint("<Esc>pa => ",<Esc>pa)<Esc>
nnoremap <buffer> <leader>e oexit()<Esc>
inoremap <buffer> ;e exit()<Esc>

" linting
nnoremap <buffer> <leader>pf :w<cr>:Dispatch -compiler=pyflakes pyflakes %<cr>
nnoremap <buffer> <leader>pF :w<cr>:Dispatch -compiler=pyflakes_all pyflakes %<cr>

nnoremap <buffer> <leader>pl :w<cr>:Dispatch -compiler=Pylint pylint %<cr>

set formatoptions-=cro
set showbreak=->
nnoremap <buffer> <F10> <Esc>:w<CR>:!clear;python %<CR>


" run current file in split
fun! RunPythonInSplit()
	let current_file = expand("%")
	echo current_file
	:execute ":split"
	:execute "normal! 5\<C-W>_"
	:execute ":term"
	call OpenTerm()
	call SetRunBuffer()
	call feedkeys("python"." ".current_file."\<CR>")

endfun

nnoremap <buffer>  <leader>r :call RunPythonInSplit()<CR>

let $PYTHONUNBUFFERED=1

" set compiler
autocmd BufEnter *.py :compiler python

" augroup my_python
"     au!
"     au BufWinEnter <buffer> setlocal foldmethod=indent
"     au BufWinEnter <buffer> setlocal shiftwidth=4
"     au BufWinEnter <buffer> setlocal softtabstop=4
"     au BufWinEnter <buffer> setlocal expandtab
"     au BufWinEnter <buffer> setlocal foldignore=
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_python * <buffer>'
"     \ "
