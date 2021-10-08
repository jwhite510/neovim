fun! CsComment()
	" save old search
	let old = @/
	" comment
	:silent! execute ':s/\(^\s*\)\@<=\S.*/\/\/ &'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! CsUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/\/\/ //'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun



" comment
vnoremap <buffer> <leader>c :call CsComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call CsUnComment()<Cr>
" close bracket
inoremap <buffer> ;; <Esc>A;<Esc>
" move up by bracket
nmap <buffer> <c-p> [{
set formatoptions-=cro

" augroup my_cs
"    au!
"    au BufWinEnter <buffer> setlocal foldmethod=indent
"    au BufWinEnter <buffer> setlocal shiftwidth=2
"    au BufWinEnter <buffer> setlocal softtabstop=2
"    au BufWinEnter <buffer> setlocal expandtab
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_cs * <buffer>'
"     \ "
