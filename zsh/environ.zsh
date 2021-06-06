# vim: ft=zsh

export EDITOR=vim
export PAGER=less

# Set GPG_TTY if gpg is installed
if hash gpg &>/dev/null; then
    export GPG_TTY=$(tty)
fi

PATH_DIRS=()

# Rust
PATH_DIRS+=("$HOME/.cargo/bin")

# Yarn
PATH_DIRS+=(
    "$HOME/.yarn/bin"
    "$HOME/.config/yarn/global/node_modules/.bin"
)

# Pyenv
PATH_DIRS+=("$HOME/.pyenv/bin")

# Poetry
PATH_DIRS+=("$HOME/.poetry/bin")

if [[ "$PLATFORM" == 'macos' ]]; then

    PATH_DIRS=(
        "/usr/local/bin"
        "/usr/local/sbin"
        $PATH_DIRS
    )

    if [[ -f /usr/libxexec/java_home ]]; then
        export JAVA_HOME=$(/usr/libexec/java_home)
    fi

    export LSCOLORS=GxFxCxDxBxegedabagaced

elif [[ "$PLATFORM" == 'linux' ]]; then
    # export LANGUAGE=en_US:en

    # Use system qemu
    export LIBVIRT_DEFAULT_URI="qemu:///system"

    PATH_DIRS+=("/opt/bin" "$HOME/.local/bin")

    if [[ -f "$HOME/.dircolors" ]]; then
        eval "$(dircolors -b $HOME/.dircolors)"
    fi
fi

# Add PATH_DIRS to PATH
for dir in $PATH_DIRS; do
    if [[ -d "$dir" && "${PATH#*$dir}" == "$PATH" ]]; then
        PATH="$dir:$PATH"
    fi
done
export PATH

unset dir
unset PATH_DIRS

# PyEnv
if command -v pyenv &>/dev/null; then
    export PYENV_ROOT=$(pyenv root)
    eval "$(pyenv init -)"
fi

# NVM
# if [[ -d "$HOME/.nvm" ]]; then
#     export NVM_DIR="$HOME/.nvm"
#     [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
#     [[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
# fi
