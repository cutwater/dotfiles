" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')
    " Language support
    " Plug 'cespare/vim-toml'                   " TOML

    " Color themes
    Plug 'morhetz/gruvbox'
    "Plug 'vim-scripts/Liquid-Carbon'
    "Plug 'blueshirts/darcula'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Misc
    Plug 'lambdalisue/fern.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()
