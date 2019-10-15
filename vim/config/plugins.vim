"--------------------------------------
" INSTALLED PLUGINS
"--------------------------------------

filetype off      "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Code / project avigation
"--------------------------------------

Plugin 'vim-scripts/ctrlp.vim'              " Files and buffers search
Plugin 'scrooloose/nerdtree'                " Files tree
Plugin 'majutsushi/tagbar'

" Themes
"--------------------------------------

Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/Liquid-Carbon'

" Tools
"--------------------------------------

Plugin 'tpope/vim-fugitive'                 " Git support
Plugin 'editorconfig/editorconfig-vim'      " EditorConfig

" Languages support
"--------------------------------------
"
Plugin 'rust-lang/rust.vim'                 " Rust
Plugin 'cespare/vim-toml'                   " TOML
Plugin 'Glench/Vim-Jinja2-Syntax'           " Jinja2

" Other
"--------------------------------------

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype indent on  "required
filetype plugin on  "required

