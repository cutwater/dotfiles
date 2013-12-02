# vim: ft=zsh

export HOME="$HOME/.local/bin:$HOME/usr/bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US:en

export EDITOR=vim
export PAGER=less

if [ -f "$HOME/.dircolors" ]; then
    source "$HOME/.dircolors"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:

eval "$(pyenv init -)"
