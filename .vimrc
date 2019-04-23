set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


" powerline
Plugin 'Lokaltog/vim-powerline'
set laststatus=2
set encoding=utf-8



" Python mode
Plugin 'python-mode/python-mode'
" Enable Python mode
let g:pymode = 0
" Default python mode options
let g:pymode_options = 1
" Enable Python Folding
" let g:pymode_folding = 0
" let g:pymode_python = 'python3'
" let g:pymode_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0


" VIM Fugutive
" Plugin 'tpope/vim-fugitive'



" vim indent guides
" toggle indent guide: 
" <leader>ig
Plugin 'nathanaelkane/vim-indent-guides'



" vim git gutter
Plugin 'airblade/vim-gitgutter'
" set update time for git tracking to render the symbols for hunk
set updatetime=100
" stage / unstage hunk: <leader>hs / <leader>hu
"
"                       next / previous
" move between hunks      ]c / [c



call vundle#end()
"run 
"PluginUpdate
filetype plugin indent on
syntax on



" fold settings (foldignore fixes python folding)
set foldmethod=indent
set shiftwidth=4
set softtabstop=4
set expandtab
set foldignore=


" search / highlight settings 
set hlsearch
set cursorline
set nowrap
set number


" search  highlight colors
hi Search ctermbg=LightBlue
hi Search ctermfg=Black


" automatic closing brackets
inoremap <leader>" ""<left>
inoremap <leader>' ''<left>
inoremap <leader>[ []<left>
inoremap <leader>{ {}<left>
inoremap <leader>( ()<left>

" print for python with macro
let @p = '^v$hxiprint\(\"pla, p'


" center screen around cursor:
"       zz

command! MakeTags !ctags -R .
" search for definition: ctrl+], ctrl + t to return
" g + ctrl + ] : find re-occuring tags

" reload all open files
" checkt[ime]

