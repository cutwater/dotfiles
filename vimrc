source ~/.vim/config/common.vim
source ~/.vim/config/plugins.vim
source ~/.vim/config/keymap.vim
source ~/.vim/config/lang.vim

if has("gui_running")
    source ~/.vim/config/gui.vim
endif

if filereadable(expand("~/.vim/config/local.vim"))
    source ~/.vim/config/local.vim
endif
