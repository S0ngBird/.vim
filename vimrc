" Set a few key things
set encoding=utf-8 
let mapleader = "\\"
let maplocalleader = "`"
syntax on
set number
set laststatus=2
set nowrap
set t_Co=256
colorscheme molokai

" Turn on pathogen
execute pathogen#infect()
filetype plugin indent on

" Set indentation stuff
set tabstop=4
set autoindent
set softtabstop=4 
set shiftwidth=4
set expandtab

" Custom statusline
set statusline=%f           " shows the filename
set statusline+=%=          " align everything else to the left
set statusline+=%04l/%04L   " show the current line number, out of the total

" Turn off arrow keys
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <down> <nop>
inoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
vnoremap <down> <nop>
vnoremap <up> <nop>

" Simple autocompletions
iabbrev ssig Written by: Benjamin Patton
iabbrev @@ ben.patton01@gmail.com

" Some test operator-pending mappings
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! f)vi(<cr>

" Mappings for manipulating text
nnoremap <leader>- ddp
nnoremap <leader>= ddkP
inoremap <leader>uu <esc>viwU
nnoremap <leader>uu viwU
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
vnoremap <leader>- dpv
vnoremap <leader>= dkPv

" Mappings for easier movement
inoremap jk <esc>
nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg

" Mappings for moving between splits, buffers, and tabs
nnoremap <leader>. <c-w><c-w>

" Quickly editing and sourcing vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Openning NERDTree more easily
nnoremap <leader>// :NERDTree<cr>

" Toggle the TagBar plugin
nnoremap <F8> :TagbarToggle<CR>

" Vimscript file settings {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" C/CPP autocommands
augroup filetype_c_cpp
    autocmd!
    " Simple C/CPP autocommands
    autocmd FileType c,cpp setlocal comments-=:// comments+=f://
    autocmd FileType c,cpp nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType c,cpp iabbrev  <buffer> iff if<space>(false)<cr>{<cr>}
    autocmd FileType c,cpp nnoremap <buffer> <s-r><cr> :!make

    " Starting comment
    autocmd FileType c,cpp iabbrev <buffer> csig /**<cr>FILENAME<cr>DESCRIPTION<cr><cr>Written by: Ben Patton<cr><bs>/
augroup END

" Python autocommands
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python iabbrev  <buffer> iff if<space>False:<cr>
    autocmd FileType python nnoremap <buffer> <s-r><cr> :!python %<cr>
    autocmd FileType python iabbrev  <buffer> #! #!/usr/bin/env python3
augroup END

augroup filetype_bash
    autocmd!
    autocmd BufNewFile,BufReadPre *.sh iabbrev <buffer> iff if<space>
    autocmd BufNewFile,BufReadPre *.sh iabbrev <buffer> #! #!/bin/bash
augroup END

" Java autocommands
augroup filetype_java
    autocmd!
    autocmd BufNewFile,BufReadPre *.java :iabbrev <buffer> iff if<space>(false)<cr>{<cr>}
augroup END

" XML autocommands
augroup filetype_xml
    autocmd!
    " the following autocmd is incomplete, need to write it so it deletes
    " inside angle brackets
    "autocmd BufNewFile,BufReadPre *.xml onoremap <buffer> i<>
augroup END
