" Set a few key things {{{
set encoding=utf-8 
let mapleader = "\\"
let maplocalleader = "`"
syntax on
set number relativenumber
set laststatus=2
set splitright
set nowrap
set t_Co=256
set hlsearch incsearch
colorscheme nightingale
" }}}

" Turn on pathogen {{{
execute pathogen#infect()
filetype plugin indent on
" }}}

" Set indentation stuff {{{
let &tabstop=4
let &autoindent=1
let &softtabstop=4 
let &shiftwidth=4
let &expandtab=1
" }}}

" Custom statusline {{{
set statusline=%f           " shows the filename
set statusline+=%=          " align everything else to the left
set statusline+=%03c        " show the current column, out of the total
set statusline+=\ -=-\      " a divider
set statusline+=%04l/%04L   " show the current line number, out of the total
" }}}

" Turn off arrow keys {{{
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
" }}}

" Simple autocompletions {{{
iabbrev ssig Written by: Benjamin Patton
iabbrev @@ ben.patton01@gmail.com
" }}}

" Some test operator-pending mappings {{{
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! f)vi(<cr>
" }}}

" Mappings for manipulating text {{{
nnoremap <leader>- ddp
nnoremap <leader>= ddkP
inoremap <leader>uu <esc>viwU
nnoremap <leader>uu viwU
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" }}}

" Mappings for search/highlighting {{{
nnoremap <leader>w :match Error /\v\s+$/<cr>
nnoremap <leader>W :match None<cr>
"nnoremap <leader>vs 
" }}}

" Mappings for easier movement {{{
inoremap jk <esc>
nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg
nnoremap <leader>. <c-w>l
nnoremap <leader>, <c-w>h
nnoremap <leader>op :execute "rightbelow vsplit " . bufname("#")<cr>
" }}}

" Plugin mappings and autocommands {{{
nnoremap <F8> :TagbarToggle<CR>
nnoremap gs :Gstatus<cr>

nnoremap <leader>// :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * execute "normal! :NERDTreeToggle\<cr>\<c-w>l" 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" Vimscript and vimrc things {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldlevel=0
augroup END
" }}}

" Python autocommands {{{
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python iabbrev  <buffer> iff if<space>False:<cr>
    autocmd FileType python nnoremap <buffer> <s-r><cr> :!python %<cr>
    autocmd FileType python iabbrev  <buffer> #! #!/usr/bin/env python3
augroup END
" }}}

" C/CPP autocommands {{{
augroup filetype_c_cpp
    autocmd!
    " Simple C/CPP autocommands
    autocmd FileType c,cpp set comments-=:// comments+=f://
    autocmd FileType c,cpp nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType c,cpp iabbrev  <buffer> iff if<space>(false)<cr>{<cr>}
    autocmd FileType c,cpp nnoremap <buffer> <s-r><cr> :!make
    autocmd FileType c,cpp set tabstop=8
    autocmd FileType c,cpp set softtabstop=8
    autocmd FileType c,cpp set shiftwidth=8

    " Starting comment
    autocmd FileType c,cpp iabbrev <buffer> csig /**<cr>FILENAME<cr>DESCRIPTION<cr><cr>Written by: Ben Patton<cr><bs>/
augroup END
" }}}

" ASM autocommands {{{
augroup filetype_asm
    autocmd!

    " basically just getting the indentation all nice and kernally
    autocmd FileType asm set tabstop=8
    autocmd FileType asm set softtabstop=8
    autocmd FileType asm set shiftwidth=8
augroup END
" }}}

" Bash autocommands {{{
augroup filetype_bash
    autocmd!
    autocmd BufNewFile,BufReadPre *.sh iabbrev <buffer> iff if<space>
    autocmd BufNewFile,BufReadPre *.sh iabbrev <buffer> #! #!/bin/bash
augroup END
" }}}

" Some Dope Functions {{{

" SHOULD grep the whole working dir and all subdirs for word under cursor
function! GrepWord()
    let word = expand("<cword>")
    execute '!grep --color=auto -r ' . word
endfunction
nnoremap <leader>gw :call GrepWord()<cr>

" Opens the packet capture file under the cursor
" Still not great, iTerm2 doesn't seem react very well
function! OpenPcap()
    let filename = expand("<cfile>")
    execute 'silent !wireshark ' . filename . ' &'
endfunction

" }}}

