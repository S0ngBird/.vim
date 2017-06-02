" Set a few key changes
inoremap jk <ESC>
set encoding=utf-8
let mapleader = "\\"
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

" New mappings - from Learning vimscript the hard way. Will organize later
nnoremap <leader>- ddp
nnoremap <leader>= ddkP
inoremap <leader>uu <esc>bvwUw
nnoremap <leader>uu bvwUw
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
iabbrev ssig Ben Patton
iabbrev @@ ben.patton01@gmail.com
nnoremap <leader>'w viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>"w viw<esc>a"<esc>bi"<esc>lel
