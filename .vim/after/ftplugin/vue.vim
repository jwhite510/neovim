" move up by bracket
nmap <buffer> <c-p> [{
vmap <buffer> <c-p> [{

" close bracket
inoremap <buffer> ;; <Esc>A;<Esc>
set formatoptions-=cro

augroup my_vue
    au!
    au BufWinEnter <buffer> setlocal foldmethod=indent
    au BufWinEnter <buffer> setlocal shiftwidth=2
    au BufWinEnter <buffer> setlocal softtabstop=2
    " au BufWinEnter <buffer> let foldlevelstart=1
    " au BufWinEnter <buffer> let vue_fold=1
    " au BufWinEnter <buffer> hi Folded ctermfg=LightBlue
    " au BufWinEnter <buffer> e
    " au BufWinEnter <buffer> SemanticHighlight
augroup END

let b:undo_ftplugin = get(b:, 'undo_ftplugin', 'exe')
    \ . "
    \ | setlocal foldmethod<
    \ | exe 'au! my_vue * <buffer>'
    \ "
