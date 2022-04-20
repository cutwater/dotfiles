" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')
    " Language support
    " Plug 'cespare/vim-toml'                   " TOML
    " Plug 'hashivim/vim-terraform'

    " Color themes
    Plug 'morhetz/gruvbox'
    "Plug 'vim-scripts/Liquid-Carbon'
    "Plug 'blueshirts/darcula'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Misc
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/fern-hijack.vim'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'

    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()
