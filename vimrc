set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Rip-Rip/clang_complete'
Bundle 'vim-scripts/ctrlp.vim'
Bundle 'vim-scripts/Liquid-Carbon'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'

"------------------------------
"Enable plugins
"------------------------------
filetype indent on
filetype plugin on

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

au BufRead,BufNewFile *.phps set filetype=php
au BufRead,BufNewFile *.phtml set filetype=php
au BufRead,BufNewFile *.wsgi set filetype=python
au BufRead,BufNewFile *.mako set filetype=html

" Remove trailing spaces
au BufWritePre * :%s/\s\+$//e

set wildignore+=.*

let g:Tex_Flavor='latex'
"let g:Tex_Outdir='build'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='okular'
"let g:Tex_CompileRule_pdf='cd '.g:Tex_Outdir.' & make'

