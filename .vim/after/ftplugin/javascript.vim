fun! JavaScriptComment()
	" save old search
	let old = @/
	" comment
	:silent! execute ':s/\(^\s*\)\@<=\S.*/\/\/ &'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! JavaScriptUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/\/\/ //'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

"print
noremap <buffer> <leader>pv ^v$hxaconsole.log("pa", pa);
noremap <buffer> <leader>pp ^v$hxaconsole.log(pa);

" comment
vnoremap <buffer> <leader>c :call JavaScriptComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call JavaScriptUnComment()<Cr>

" tags
inoremap <buffer> ;t <Esc>wbywi<<Esc>ea><><Esc>ha/<Esc>pF>i

" move up by bracket
nmap <buffer> <c-p> [{
vmap <buffer> <c-p> [{

" close bracket
inoremap <buffer> ;; <Esc>A;<Esc>
set formatoptions-=cro

" augroup my_javascript
"     au!
"     au BufWinEnter <buffer> setlocal foldmethod=indent
"     au BufWinEnter <buffer> setlocal shiftwidth=2
"     au BufWinEnter <buffer> setlocal softtabstop=2
"     " au BufWinEnter <buffer> let foldlevelstart=1
"     " au BufWinEnter <buffer> let javaScript_fold=1
"     " au BufWinEnter <buffer> hi Folded ctermfg=LightBlue
"     " au BufWinEnter <buffer> e
"     " au BufWinEnter <buffer> SemanticHighlight
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_javascript * <buffer>'
"     \ "
