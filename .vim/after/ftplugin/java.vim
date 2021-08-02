" move up by bracket
nmap <buffer> <c-p> [{


set formatoptions-=cro


augroup my_java
   au!
   au BufWinEnter <buffer> setlocal foldmethod=indent
   au BufWinEnter <buffer> setlocal shiftwidth=4
   au BufWinEnter <buffer> setlocal softtabstop=4
   " au BufWinEnter <buffer> let foldlevelstart=1
   au BufWinEnter <buffer> setlocal expandtab
augroup END

let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
    \ . "
    \ | setlocal foldmethod<
    \ | exe 'au! my_java * <buffer>'
    \ "
