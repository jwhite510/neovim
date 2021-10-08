
" nnoremap <buffer> j k


" set compiler
autocmd BufEnter *.gd :compiler godot

" augroup my_gdscript
"     au!
"     au BufWinEnter <buffer> setlocal foldmethod=indent
"     au BufWinEnter <buffer> setlocal shiftwidth=8
"     au BufWinEnter <buffer> setlocal softtabstop=8
"     " au BufWinEnter <buffer> setlocal expandtab
"     au BufWinEnter <buffer> setlocal foldignore=
" augroup END
" 
" let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
"     \ . "
"     \ | setlocal foldmethod<
"     \ | exe 'au! my_gdscript * <buffer>'
"     \ "
