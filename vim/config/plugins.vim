"======================================
" INSTALLED PLUGINS
"======================================

call plug#begin('~/.vim/bundle')

" Code / project navigation
"--------------------------------------

Plug 'vim-scripts/ctrlp.vim'              " Files and buffers search
Plug 'scrooloose/nerdtree'                " Files tree
Plug 'majutsushi/tagbar'

" Themes
"--------------------------------------

Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/Liquid-Carbon'
Plug 'blueshirts/darcula'

" Tools
"--------------------------------------

Plug 'tpope/vim-fugitive'                 " Git support
Plug 'editorconfig/editorconfig-vim'      " EditorConfig

" Languages support
"--------------------------------------

Plug 'rust-lang/rust.vim'                 " Rust
Plug 'cespare/vim-toml'                   " TOML
Plug 'Glench/Vim-Jinja2-Syntax'           " Jinja2

" Other
"--------------------------------------

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
