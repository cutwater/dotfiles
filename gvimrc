
"colorscheme ir_black
colorscheme liquidcarbon
set guioptions-=m
set guioptions-=e
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set guifont=DejaVu\ Sans\ Mono\ 10

runtime! gvimrc_local.vim
