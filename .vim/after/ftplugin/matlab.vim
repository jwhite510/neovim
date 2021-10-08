fun! MatlabComment()
	" save old search
	let old = @/
	" comment
	:silent! execute ':s/\(^\s*\)\@<=\S.*/% &'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! MatlabUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/% //'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! SetMatlabBreakPoint()
	" set breakpoint in matlab
	let line_num = getcurpos()[1]
	let line_num = line_num+1
	let mfilename = expand("%:t")
	" dont include the .m part
	let mfilename = split(mfilename, '\.')[0]

	call feedkeys("idbstop in ".mfilename." at ".line_num."\<CR>")
	call feedkeys("disp('breakpoint');"."\<CR>")
	call feedkeys("dbclear all"."\<ESC>")

endfun

" matlab print commands
noremap <buffer> <leader>pp Idisp(<ESC>A);<ESC>
noremap <buffer> <leader>pv ^"idg_idisp('<C-r>i :');disp(<C-r>i);<ESC>
noremap <buffer> <leader>ps ^"idg_idisp('size(<C-r>i) :');disp(size(<C-r>i));<ESC>


" comment
vnoremap <buffer> <leader>c :call MatlabComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call MatlabUnComment()<Cr>

" set breakpoints
inoremap <buffer> ;break <ESC>:call SetMatlabBreakPoint()<CR>

" close bracket
inoremap <buffer> ;; <Esc>A;<Esc>


" augroup my_matlab
"     au!
"     " au BufWinEnter <buffer> setlocal foldmethod=indent
"     au BufWinEnter <buffer> setlocal shiftwidth=4
"     au BufWinEnter <buffer> setlocal softtabstop=4
"     au BufWinEnter <buffer> setlocal expandtab
"     " au BufWinEnter <buffer> setlocal foldignore=
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_matlab * <buffer>'
"     \ "
