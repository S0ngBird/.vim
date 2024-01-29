" Set a few key things {{{
set encoding=utf-8 
let mapleader = "\\"
let maplocalleader = "`"
syntax on
set number relativenumber
set laststatus=2
set splitright
set splitbelow
set autoread
set nrformats+=alpha
set nowrap
set t_Co=256
set hlsearch incsearch
set background=dark
" }}}

" Turn on vimplug {{{ 
call plug#begin()
Plug 'mhartington/oceanic-next'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'preservim/tagbar'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
" }}}

" Colorscheme settings {{{
colorscheme OceanicNext
" }}}

" Set indentation stuff {{{
set tabstop=4
set autoindent
set softtabstop=4 
set shiftwidth=4
set expandtab
" }}}

" Turn off arrow keys {{{
noremap <left> :echom "Arrow keys are off. Get rekt, n00b"<cr>
noremap <right> :echom "Arrow keys are off. Get rekt, n00b"<cr>
noremap <down> :echom "Arrow keys are off. Get rekt, n00b"<cr>
noremap <up> :echom "Arrow keys are off. Get rekt, n00b"<cr>
" }}}

" Simple autocompletions {{{
iabbrev ssig Written by: Benjamin Patton
inoremap <leader><tab> <c-p>
" }}}

" Some test operator-pending mappings {{{

" 'inside next {, inside last }, etc.'
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
nnoremap / /\v
nnoremap <leader>w :match Error /\v\s+$/<cr>
nnoremap <leader>W :match None<cr>
nnoremap noh :noh<cr>
" }}}

" Mappings for easier movement {{{
inoremap jk <esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>op :execute "rightbelow vsplit " . bufname("#")<cr>
" }}}

" Plugin mappings and autocommands {{{
nnoremap <F8> :TagbarToggle<CR>
nnoremap <leader>// :NERDTreeToggle<cr>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * execute "normal! :NERDTreeToggle\<cr>\<c-w>l" 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" This one is for rolling rew when I need to redraw the screen
nnoremap rew :silent redraw!<cr>
" }}}

" Vimscript and vimrc things {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Sources the current file
nnoremap <leader>sc :source %<cr>
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldlevel=0
augroup END
" }}}

" Python autocommands {{{
augroup filetype_python
    autocmd!
    " The <buffer> option sets the mapping to buffer local, so
    " they don't apply to different filetypes in the same window/tab
    autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
    autocmd FileType python nnoremap <buffer> <s-r><cr> :python3 %<cr>:redraw!<cr>
    autocmd FileType python iabbrev  <buffer> #! #!/usr/bin/env python3
    autocmd FileType python nnoremap <leader>str Bistr(<esc>Ea)<esc>
    autocmd FileType python nnoremap <leader>__ bi__<esc>ea__<esc>
augroup END

" }}}

" Bash autocommands {{{
augroup filetype_bash
    autocmd!
    autocmd BufNewFile,BufReadPre *.sh iabbrev <buffer> iff if<space>
    autocmd BufNewFile,BufReadPre *.sh iabbrev <buffer> #! #!/bin/bash
augroup END
" }}}

" TCL autocommands {{{
augroup filetype_tcl
    autocmd!
    autocmd Filetype tcl setlocal tabstop=4
    autocmd Filetype tcl setlocal softtabstop=4
    autocmd Filetype tcl setlocal shiftwidth=4
augroup END
" }}}

" YAML autocommands {{{
augroup filetype_tcl
    autocmd!
    autocmd Filetype yaml setlocal tabstop=2
    autocmd Filetype yaml setlocal softtabstop=2
    autocmd Filetype yaml setlocal shiftwidth=2
augroup END
" }}}
