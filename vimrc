set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"Bundle 'Rip-Rip/clang_complete'
Bundle 'vim-scripts/ctrlp.vim'
Bundle 'vim-scripts/Liquid-Carbon'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
"Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'

"Bundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'

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

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"------------------------------
"Status line
"------------------------------
set laststatus=2
set statusline=%<%f%y%m%r\ %{&encoding},%{&ff}\ %l,%c%V/%L\ %P

set history=1000

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

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

au BufRead,BufNewFile *.phps set filetype=php
au BufRead,BufNewFile *.phtml set filetype=php
au BufRead,BufNewFile *.wsgi set filetype=python
au BufRead,BufNewFile *.mako set filetype=html

" Remove trailing spaces
au BufWritePre * :%s/\s\+$//e

set wildignore+=.*

"let g:Tex_Flavor='latex'
""let g:Tex_Outdir='build'
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_ViewRule_pdf='okular'
""let g:Tex_CompileRule_pdf='cd '.g:Tex_Outdir.' & make'

" clang complete

"let g:clang_debug=1
"let g:clang_use_library=1
"let g:clang_library_path="/usr/lib/llvm"

"let g:Tex_SmartKeyBS = 0
"let g:Tex_SmartKeyQuote = 0
"let g:Tex_SmartKeyDot = 0
"let g:Imap_UsePlaceHolders = 0
