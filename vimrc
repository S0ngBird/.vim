" Set a few key changes
inoremap jk <ESC>
let mapleader="\<Space>"
filetype plugin indent on
set encoding=utf-8
syntax on
set number

" Set indentation stuff
set tabstop=4
set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab

" Turn off arrow keys
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <down> <nop>
inoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>

" Disable automatic comment isertion
au FileType c,cpp setlocal comments-=:// comments+=f://
