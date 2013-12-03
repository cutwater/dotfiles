# vim: ft=zsh

export EDITOR=vim
export PAGER=less

. "$HOME/.zsh/platform"

if [ -f "$HOME/.dircolors" ]; then
    source "$HOME/.dircolors"
fi

if [[ "$PLATFORM" == 'macos' ]]; then
    export PATH="/usr/local/bin:$PATH"
fi

if [[ -d "$HOME/usr/bin" ]]; then
    export PATH="$HOME/usr/bin:$PATH"
fi

if [[ -d "$HOME/.local/bin" ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [[ "$PLATFORM" == 'linux' ]]; then
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    export LANGUAGE=en_US:en
elif [[ "$PLATFORM" == 'macos' ]]; then
    export LSCOLORS=GxFxCxDxBxegedabagaced
fi

if [[ -d "$HOME/.pyenv" ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"

    eval "$(pyenv init -)"
fi
