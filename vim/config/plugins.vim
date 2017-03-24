"--------------------------------------
" PLUGIN SETTINGS
"--------------------------------------

set nocompatible  "required
filetype off      "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/Liquid-Carbon'
Plugin 'cutwater/vim-colors-idea', {'pinned': 1}

" Language support
Plugin 'rust-lang/rust.vim'         " Rust
Plugin 'cespare/vim-toml'           " TOML
Plugin 'Glench/Vim-Jinja2-Syntax'   " Jinja2

call vundle#end()

filetype indent on  "required
filetype plugin on  "required
