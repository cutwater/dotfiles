# vim: ft=zsh

export EDITOR=nvim
export PAGER=less

# Set GPG_TTY if gpg is installed
if hash gpg &>/dev/null; then
    export GPG_TTY=$(tty)
fi

PATH_DIRS=(
    # Common
    "$HOME/.local/bin"
    # Rust
    "$HOME/.cargo/bin"
    # Pyenv
    "$HOME/.pyenv/bin"
    # Yarn (disabled)
    # "$HOME/.yarn/bin"
    # "$HOME/.config/yarn/global/node_modules/.bin"
)

if [[ "$PLATFORM" == 'macos' ]]; then

    if [[ -f /usr/libxexec/java_home ]]; then
        export JAVA_HOME=$(/usr/libexec/java_home)
    fi

    export LSCOLORS=GxFxCxDxBxegedabagaced

    eval "$(/opt/homebrew/bin/brew shellenv)"

elif [[ "$PLATFORM" == 'linux' ]]; then
    # export LANGUAGE=en_US:en
    export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

    # Use system qemu
    export LIBVIRT_DEFAULT_URI="qemu:///system"

    PATH_DIRS+=("/opt/bin")

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
    export PYENV_ROOT="$HOME/.pyenv"
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi

# NVM
# if [[ -d "$HOME/.nvm" ]]; then
#     export NVM_DIR="$HOME/.nvm"
#     [[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
#     [[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
# fi
