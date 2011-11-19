set nocompatible

call pathogen#runtime_append_all_bundles()

"------------------------------
"Common settings
"------------------------------

"------------------------------
"Syntax coloring options
"------------------------------

syntax on
set background=dark

set number

set showcmd

"------------------------------
"Indent options
"------------------------------
set autoindent
set smartindent

"------------------------------
"Search options
"------------------------------
set hlsearch
set wrapscan
set incsearch
set ignorecase

set scrolljump=7
set scrolloff=7

"------------------------------
"Tab indent options
"------------------------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"------------------------------
"Wrap options
"------------------------------
set wrap
set linebreak
set whichwrap+=<,>,[,]
set backspace=indent,eol,start

"------------------------------
"Status line
"------------------------------
set laststatus=2
set statusline=%<%f%y%m%r\ %{&encoding},%{&ff}\ %l,%c%V/%L\ %P

set history=100

"------------------------------
"Backup and swap
"------------------------------
set nobackup
set noswapfile

"------------------------------
"Encodings
"------------------------------
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866

set completeopt=menu

"------------------------------
"Window options
"------------------------------
set winminwidth=0
set winminheight=0

"------------------------------
"Other options
"------------------------------
set mouse=a

"------------------------------
"Keymap settings
"------------------------------

" No settings yet

"------------------------------
"Hotkey maps
"------------------------------
imap <Ins> <Esc>i

nmap <F3> :nohlsearch<CR>
imap <F3> <Esc>:nohlsearch<CR>
vmap <F3> <Esc>:nohlsearch<CR>

nmap <silent> <Leader>p :NERDTreeToggle<CR>

" navigation by linebreaks
nmap <silent> j gj
nmap <silent> k gk

nmap <silent> <Down> gj
nmap <silent> <Up> gk

"------------------------------
"Menu config
"------------------------------
"set wildmenu
"set wcm=<Tab>
"
"menu Encoding.Read.UTF-8 :e ++enc=utf-8<CR>
"menu Encoding.Read.CP1251 :e ++enc=cp1251<CR>
"menu Encoding.Read.KOI8-R :e ++enc=koi8-r<CR>
"menu Encoding.Read.CP8666 :e ++enc=cp866<CR>
"map <F7> :emenu Encoding.Read.<Tab>
"
"menu Encoding.Write.UTF-8 :set fenc=utf-8<CR>
"menu Encoding.Write.CP1251 :set fenc=cp1251<CR>
"menu Encoding.Write.KOI8-R :set fenc=koi8-r<CR>
"menu Encoding.Write.CP8666 :set fenc=cp866<CR>
"map <S-F7> :emenu Encoding.Write.<Tab>
"
"menu Encoding.Endline.UNIX :set fileformat=unix<CR>
"menu Encoding.Endline.DOS :set fileformat=dos<CR>
"menu Encoding.Endline.MAC :set fileformat=mac<CR>
"map <C-F7> :emenu Encoding.Endline.<Tab>

"------------------------------
"Enable plugins
"------------------------------
filetype indent on
filetype plugin on

au BufRead,BufNewFile *.phps set filetype=php
au BufRead,BufNewFile *.phtml set filetype=php

au BufRead,BufNewFile *.wsgi set filetype=python

au BufRead,BufNewFile *.mako set filetype=html

" Remove trailing spaces
au BufWritePre * :%s/\s\+$//e

set wildignore+=.*

let g:tex_flavor='latex'
