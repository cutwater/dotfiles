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

colorscheme liquidcarbon

if has("gui_macvim")
    set guifont=Monaco:h12
else
    set guifont=Ubuntu\ Mono\ 10
endif


