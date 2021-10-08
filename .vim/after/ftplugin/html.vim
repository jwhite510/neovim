fun! HtmlComment()
	" save old search
	let old = @/
	" comment the html code
	:silent! execute ':s/\(^\s*\)\@<=\S.*/<!--&-->'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! HtmlUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/<!--//g'
	" restore search
	call histdel('/', -1)
	let @/ = old

	" save old search
	let old = @/
	:silent! execute ":s".'/-->//g'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! HtmlJinjaComment()
	" save old search
	let old = @/
	" comment jinja
	:silent! execute ":s".'/\(^\s*\)\@<=\S.*/{#&#}'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! HtmlJinjaUnComment()
	" save old search
	let old = @/
	" uncomment jinja
	:silent! execute ":s".'/{#//g'
	" restore search
	call histdel('/', -1)
	let @/ = old

	" save old search
	let old = @/
	" uncomment jinja
	:silent! execute ":s".'/#}//g'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun



"  comment
vnoremap <buffer> <leader>c :call HtmlComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call HtmlUnComment()<CR>
" jinja comment
vnoremap <buffer> <leader>jc :call HtmlJinjaComment()<CR>
" jinja uncomment
vnoremap <buffer> <leader>juc :call HtmlJinjaUnComment()<CR>
" comment jinja logic statement (not whole line)
nnoremap <buffer> <leader>jc i{#<Esc>l%a#}<Esc>
" uncomment jinja logic statement (not whole line)
nnoremap <buffer> <leader>juc xx%lxx

" create a tag while typing with <leader> t
inoremap <buffer> ;t <Esc>wbywi<<Esc>ea><><Esc>ha/<Esc>pF>i

" create beginning of jinja logic
inoremap <buffer> ;j {%  %}<Esc>3ha

" snippet
nnoremap <buffer> <leader>html :-1read ~/.vim/snippet/start.html<CR>4jf>a


"remove all tabs/ indents at beginning of lines
" and remove all blank lines
nnoremap <buffer> <leader>com :g/^\s*$/d<CR>:%le<CR>:noh<CR>


" augroup my_html
"     au!
"     au BufWinEnter <buffer> setlocal foldmethod=indent
"     au BufWinEnter <buffer> setlocal shiftwidth=2
"     au BufWinEnter <buffer> setlocal softtabstop=2
"     au BufWinEnter <buffer> setlocal expandtab
"     au BufWinEnter <buffer> setlocal iskeyword+=-
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | execute 'au! my_html * <buffer>'
"     \ "
