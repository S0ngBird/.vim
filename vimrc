" Set a few key changes
inoremap jk <ESC>
set encoding=utf-8
syntax on
set number
set nowrap

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

" new stuff!
let mapleader = "\\"
let maplocalleader = ","
nnoremap <leader>- ddp
nnoremap <leader>= ddkP
inoremap <leader><c-u> <esc>bvwUwa
nnoremap <leader><c-u> bvwUw
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
