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

" Fix keymap for tmux terminal
if &term =~ '^tmux'
    exec "set <xUp>=\e[1;*A"
    exec "set <xDown>=\e[1;*B"
    exec "set <xRight>=\e[1;*C"
    exec "set <xLeft>=\e[1;*D"
endif
