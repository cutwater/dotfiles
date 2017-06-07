"--------------------------------------
" GUI SETTINGS
"--------------------------------------

set guioptions-=m   " Disable menu bar
set guioptions-=e   " Disable GUI tabs
set guioptions-=T   " Disable toolbar
set guioptions-=r   " Disable right scrollbar
set guioptions-=R   " Disable right scrollbar if vsplit
set guioptions-=l   " Disable left scrollbar
set guioptions-=L   " Disable left scrollbar if vsplit

set cursorline

set colorcolumn=80

colorscheme liquidcarbon

if has("gui_macvim")
    set guifont=Menlo\ Regular:h12
else
    set guifont=Ubuntu\ Mono\ 12
endif


