" Vim color file

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="terminal"

hi Normal guifg=green guibg=black 

call Hl_remove_bold()
