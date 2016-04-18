source ~/.vim/config/plugins.vim

if has("gui_running")
    source ~/.vim/config/gui.vim
endif

source ~/.vim/config/common.vim

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

