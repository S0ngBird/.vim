
" When creating a new operator, need to start
" with a mapping and a function

nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    " Remember that ==# is the case insensitive comparison
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[y`]
    else
        return
    endif

    silent execute "grep! -R " . shellescape(@@) . " ."
    copen

    let @@ = saved_unnamed_register
endfunction

"
" Test text, this is some test text here in this line,
" Here are some more words, this is the stuff I'll be using to test the new
" operator. How does it look? I'm learning so much!
"
