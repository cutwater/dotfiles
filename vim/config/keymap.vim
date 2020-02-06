"--------------------------------------
" HOTKEY BINDING SETTINGS
"--------------------------------------

imap <Ins> <Esc>i

nmap <F3> :nohlsearch<CR>
imap <F3> <Esc>:nohlsearch<CR>
vmap <F3> <Esc>:nohlsearch<CR>

" navigation by linebreaks
nmap <silent> j gj
nmap <silent> k gk

nmap <silent> <Down> gj
nmap <silent> <Up> gk

nmap <F7> :NERDTreeToggle<CR>

" tmux
if &term =~ '^tmux'
    exec "set <Up>=\e[1;*A"
    exec "set <Down>=\e[1;*B"
    exec "set <Right>=\e[1;*C"
    exec "set <Left>=\e[1;*D"
endif
