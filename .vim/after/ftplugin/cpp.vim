
" test
" inoremap <buffer> ppp this_is_cpp

noremap <buffer> <leader>p ^v$hxastd::cout << pa << std::endl;

" get type with ycm
noremap <buffer> <leader>k :YcmCompleter GetType<CR>


nnoremap <F10> <Esc>:w<CR>:!clear;g++ % -o output.out; ./output.out<CR>
nnoremap <F9> <Esc>:w<CR>:!clear;g++ % -g -o output.out<CR>


augroup my_cpp
   au!
   au BufWinEnter <buffer> setlocal foldmethod=syntax
   au BufWinEnter <buffer> setlocal shiftwidth=2
   au BufWinEnter <buffer> setlocal softtabstop=2
augroup END

let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
    \ . "
    \ | setlocal foldmethod<
    \ | exe 'au! my_cpp * <buffer>'
    \ "
