fun! CppComment()
	" save old search
	let old = @/
	" comment
	:silent! execute ':s/\(^\s*\)\@<=\S.*/\/\/ &'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! CppUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/\/\/ //'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! ImplementFunction()


	" make sure not in a header file
	let file_name = expand("%:t")
	if split(file_name, '\.')[1] != 'h'
		return
	endif

	normal! $
	" get character under cursor
	let lastchar = matchstr(getline('.'), '\%' . col('.') . 'c.')

	if lastchar != ";"
		echo "dont forget ;"
		return
	endif

	" copy function to be implemented
	:execute "normal! ?(\<CR>BBv/)\<CR>y"

	:execute "normal! :call SwitchHeader()\<CR>"
	" go to bottom of file
	:execute "normal! G"
	:execute "normal! o\<C-r>\""

	:execute "normal! G$"
	:execute "normal! ?(\<CR>B"

	" mark position
	:execute "normal! mi"
	:execute "normal! ?}\<CR>%"

	:execute "normal! ?::\<CR>"
	:execute "normal! Bye`iPa::\<ESC>"
	:execute "normal! Go{\<CR>}\<ESC>k"

endfun

" comment
vnoremap <buffer> <leader>c :call CppComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call CppUnComment()<Cr>

noremap <buffer> <leader>pp ^v$hxastd::cout << pa << std::endl;
nnoremap <buffer> <leader>pv ^vg_xastd::cout << "<C-r>"" << " => " << <C-r>" << std::endl;<ESC>
nnoremap <buffer> <leader>e oexit(0);<Esc>

" for loop
inoremap <buffer> ;for for(<++>;<++>;<++>){<cr><++><cr>}<ESC>:call JumptoNext("?", "for")<cr> :call JumptoNext("/", "<++>")<cr>"_c4l
" while loop
inoremap <buffer> ;while while(<++>){<cr><++><cr>}<ESC> :call JumptoNext("?", "while")<cr> :call JumptoNext("/", "<++>")<cr>"_c4l
" close bracket
inoremap <buffer> ;; <Esc>A;<Esc>
inoremap <buffer> ;def <Esc>maa<++> <++>(<++>){<cr><++><cr>}<ESC>`ac4l
inoremap <buffer> ;e exit(0);<Esc>

nnoremap <buffer> <leader>pi :call ImplementFunction()<CR>

" start debugger
nnoremap <buffer> <leader>db :call zgdb#start()<CR>


" get type with ycm
noremap <buffer> <leader>k :YcmCompleter GetType<CR>

" move up by bracket
nmap <buffer> <c-p> [{


" nnoremap <F10> <Esc>:w<CR>:!clear;g++ % -o output.out; ./output.out<CR>
" nnoremap <F9> <Esc>:w<CR>:!clear;g++ % -g -o output.out<CR>
nnoremap <F10> :!cmake --build . <CR>

if exists('*SwitchHeader')
else
	fun! SwitchHeader()
		let current_dir = expand("%:p:h")
		let file_name = expand("%:t")
		if split(file_name, '\.')[1] == 'h'

			let w:header_switch_h_line = line(".")
			let w:header_switch_h_col = col(".")
			:execute "normal! H"
			let w:header_switch_h_location_top = line(".")
			let other_file_name = current_dir.'/'.split(file_name, '\.')[0].'.cpp'

			" switch to the file
			if filereadable(other_file_name)
				:execute ":e ".other_file_name
			else
				let other_file_name = substitute(other_file_name, "Public", "Private", "")
				:execute ":e ".other_file_name
			endif
			" move to correct location
			if exists("w:header_switch_cpp_line")
				:execute "normal! "+w:header_switch_cpp_location_top+"gg"
				:execute "normal! zt"
				call cursor(w:header_switch_cpp_line,w:header_switch_cpp_col)
			endif

		else
			" switching to header file
			let w:header_switch_cpp_line = line(".")
			let w:header_switch_cpp_col = col(".")
			:execute "normal! H"
			let w:header_switch_cpp_location_top = line(".")
			let other_file_name = current_dir.'/'.split(file_name, '\.')[0].'.h'

			" switch to the file
			if filereadable(other_file_name)
				" command string
				:execute ":e ".other_file_name
			else
				let other_file_name = substitute(other_file_name, "Private", "Public", "")
				:execute ":e ".other_file_name

			endif
			" move to correct location
			if exists("w:header_switch_h_line")
				:execute "normal! "+w:header_switch_h_location_top+"gg"
				:execute "normal! zt"
				call cursor(w:header_switch_h_line,w:header_switch_h_col)
			endif

		endif
	endfun
endif

" switch to header header file
nnoremap <buffer> <leader>ph :call SwitchHeader()<CR>
set formatoptions-=cro


" augroup my_cpp
"    au!
"    au BufWinEnter <buffer> setlocal foldmethod=indent
"    au BufWinEnter <buffer> setlocal shiftwidth=2
"    au BufWinEnter <buffer> setlocal softtabstop=2
"    " au BufWinEnter <buffer> let foldlevelstart=1
"    au BufWinEnter <buffer> setlocal expandtab
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_cpp * <buffer>'
"     \ "
