fun! CudaComment()
	" save old search
	let old = @/
	" comment
	:silent! execute ':s/\(^\s*\)\@<=\S.*/\/\/ &'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

fun! CudaUnComment()
	" save old search
	let old = @/
	" uncomment
	:silent! execute ":s".'/\/\/ //'
	" restore search
	call histdel('/', -1)
	let @/ = old
endfun

" comment
vnoremap <buffer> <leader>c :call CudaComment()<CR>
" uncomment
vnoremap <buffer> <leader>uc :call CudaUnComment()<Cr>

" close bracket
inoremap <buffer> ;; <Esc>A;<Esc>

" move up by bracket
nmap <buffer> <c-p> [{

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


" augroup my_cuda
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
"     \ | exe 'au! my_cuda * <buffer>'
"     \ "
