source ~/.vim/config/plugins.vim

if has("gui_running")
    source ~/.vim/config/gui.vim
endif


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

