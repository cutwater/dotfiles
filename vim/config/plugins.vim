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
Plugin 'vim-scripts/Liquid-Carbon'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

" Language support
Plugin 'rust-lang/rust.vim'     " Rust
Plugin 'cespare/vim-toml'       " TOML

call vundle#end()

filetype indent on  "required
filetype plugin on  "required
