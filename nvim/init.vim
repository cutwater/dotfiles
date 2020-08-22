" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

" Color themes
Plug 'morhetz/gruvbox'
"Plug 'vim-scripts/Liquid-Carbon'
"Plug 'blueshirts/darcula'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Keymap
imap <S-Insert> <C-R>*

" Initialize plugin system
call plug#end()

colorscheme gruvbox

" Indentation
" -----------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
