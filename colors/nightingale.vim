""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nightingale.vim
"
" Author: Ben Patton <ben.patton01@gmail.com>
"
" Note: Colorscheme shamelessly stolen as molokai.vim 
" from Tomas Restrepo <tomas@winterdom.com>, then
" modified to my own tastes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi clear
set background=dark


"
" 256-color terminal settings
" 
" If you care about having a GUI settings:
"   ADD IT YERSELF, NERD
"
if &t_Co > 255

    hi Normal           ctermfg=252     ctermbg=234                 " Normal text is fg, whole editor background color is bg
    hi CursorLine       ctermbg=234                     cterm=none  " Color of the whole line the cursor is currently on
    hi CursorLineNr     ctermfg=39                      cterm=none  " The line number color of the current line

    " colors for various data types
    hi Comment          ctermfg=244                                 
    hi Boolean          ctermfg=135                                 
    hi Character        ctermfg=144                                 
    hi Number           ctermfg=135
    hi String           ctermfg=30
    hi Float            ctermfg=135

    " if else else ifs
    hi Conditional      ctermfg=71                      cterm=bold

    hi Constant         ctermfg=135                     cterm=bold
    hi Cursor           ctermfg=16      ctermbg=253
    hi Debug            ctermfg=225                     cterm=bold
    hi Define           ctermfg=81
    hi Delimiter        ctermfg=241

    hi DiffAdd                          ctermbg=24
    hi DiffChange       ctermfg=181     ctermbg=239
    hi DiffDelete       ctermfg=162     ctermbg=53
    hi DiffText                         ctermbg=102     cterm=bold

    hi Directory        ctermfg=118                     cterm=bold
    hi Error            ctermfg=219     ctermbg=89
    hi ErrorMsg         ctermfg=199     ctermbg=16      cterm=bold
    hi Exception        ctermfg=118                     cterm=bold
    hi FoldColumn       ctermfg=67      ctermbg=16
    hi Folded           ctermfg=67      ctermbg=16
    hi Function         ctermfg=161                     cterm=bold

    " variable color
    hi Identifier       ctermfg=126                     cterm=none

    hi Ignore           ctermfg=244     ctermbg=232
    hi IncSearch        ctermfg=193     ctermbg=16

    hi Keyword          ctermfg=40                      cterm=bold
    hi Label            ctermfg=229                     cterm=none
    hi Macro            ctermfg=193
    hi SpecialKey       ctermfg=81

    hi MatchParen       ctermfg=233     ctermbg=208     cterm=bold
    hi ModeMsg          ctermfg=229
    hi MoreMsg          ctermfg=229
    hi Operator         ctermfg=161

    " complete menu
    hi Pmenu            ctermfg=81      ctermbg=16
    hi PmenuSel         ctermfg=255     ctermbg=242
    hi PmenuSbar                        ctermbg=232
    hi PmenuThumb       ctermfg=81

    hi PreCondit        ctermfg=118                     cterm=bold
    hi PreProc          ctermfg=118
    hi Question         ctermfg=81
    hi Repeat           ctermfg=161                     cterm=bold
    hi Search           ctermfg=0       ctermbg=222     cterm=NONE

    " marks column
    hi SignColumn       ctermfg=118     ctermbg=235
    hi SpecialChar      ctermfg=161                     cterm=bold
    hi SpecialComment   ctermfg=245                     cterm=bold
    hi Special          ctermfg=81

    if has("spell")
        hi SpellBad                     ctermbg=52
        hi SpellCap                     ctermbg=17
        hi SpellLocal                   ctermbg=17
        hi SpellRare    ctermfg=none    ctermbg=none    cterm=reverse
    endif

    " def,return statement python, lots of tcl keywords, etc
    hi Statement        ctermfg=71                      cterm=bold

    hi StatusLine       ctermfg=238     ctermbg=253
    hi StatusLineNC     ctermfg=244     ctermbg=232
    hi StorageClass     ctermfg=208
    hi Structure        ctermfg=81
    hi Tag              ctermfg=161
    hi Title            ctermfg=166
    hi Todo             ctermfg=231     ctermbg=232     cterm=bold

    hi Typedef          ctermfg=81
    hi Type             ctermfg=81                      cterm=none
    hi Underlined       ctermfg=244                     cterm=underline

    hi VertSplit        ctermfg=244     ctermbg=232     cterm=bold
    hi VisualNOS                        ctermbg=238
    hi Visual                           ctermbg=8
    hi WarningMsg       ctermfg=231     ctermbg=238     cterm=bold
    hi WildMenu         ctermfg=81      ctermbg=16

    hi CursorColumn                     ctermbg=236
    hi ColorColumn                      ctermbg=236
    hi LineNr           ctermfg=25      ctermbg=234
    hi NonText          ctermfg=59

    hi SpecialKey       ctermfg=59
end
