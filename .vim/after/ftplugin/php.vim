" comment
vnoremap <buffer> <leader>c :s/\(^\s*\)\@<=\S.*/\/\/ &<CR> :noh<CR>
" uncomment
vnoremap <buffer> <leader>uc :s/\/\/ //g<Cr>:noh<Cr>
"print to error log
nnoremap <buffer> <leader>p ^d$aerror_log(print_r(<C-R>", true));<Esc>


" augroup my_php
"     au!
"     au BufWinEnter <buffer> setlocal foldmethod=syntax
"     au BufWinEnter <buffer> setlocal shiftwidth=2
"     au BufWinEnter <buffer> setlocal softtabstop=2
"     au BufWinEnter <buffer> let foldlevelstart=1
"     au BufWinEnter <buffer> let php_folding=2
"     au BufWinEnter <buffer> hi Folded ctermfg=Green
"     au BufWinEnter <buffer> setlocal expandtab
"     au BufWinEnter <buffer> e
"     " au BufWinEnter <buffer> SemanticHighlight
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_php * <buffer>'
"     \ "
