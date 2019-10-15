"==============================
" COMMON SETTINGS
"==============================

" Disable compatibility with Vi
set nocompatible

" Syntax coloring options
"------------------------------

syntax on
set background=dark

set number

" Show last command
set showcmd
" Don't show editor mode (handled by lightline)
set noshowmode

" Indent options
"------------------------------
set autoindent
set smartindent

" Search options
"------------------------------
set hlsearch
set wrapscan
set incsearch
set ignorecase

set scrolljump=7
set scrolloff=7

" Tab indent options
"------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Wrap options
"------------------------------
set wrap
set linebreak
set whichwrap+=<,>,[,]
set backspace=indent,eol,start

" Highlight tabs, trailing spaces, unprintable characters
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Status line
"------------------------------
set laststatus=2
set history=1000

set completeopt=menu
set wildmenu

" Backup and swap
"------------------------------
set nobackup
set noswapfile

" Encodings
"------------------------------
set encoding=utf-8

" Filetypes
"------------------------------

filetype indent on
filetype plugin on

"Other options
"------------------------------
set mouse=a
