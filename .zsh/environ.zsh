# vim: ft=zsh

export EDITOR=nvim

export PAGER=less

_zshrc_path=(
    # Common
    "$HOME/.local/bin"
    # Rust
    "$HOME/.cargo/bin"
    # Pyenv
    "$HOME/.pyenv/bin"
    # Krew
    "$HOME/.krew/bin"
)

if [[ "$_zshrc_platform" == 'macos' ]]; then
    _zshrc_path+="/opt/homebrew/opt/rustup/bin"

    eval "$(/opt/homebrew/bin/brew shellenv)"

    export LSCOLORS='GxFxCxDxBxegedabagaced'

    if [[ -f '/usr/libxexec/java_home' ]]; then
        export JAVA_HOME=$(/usr/libexec/java_home)
    fi
elif [[ "$_zshrc_platform" == 'linux' ]]; then
    _zshrc_path+="/opt/bin"

    # export LANGUAGE=en_US:en
    export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
    # Use system qemu
    export LIBVIRT_DEFAULT_URI="qemu:///system"

    if [[ -f "$HOME/.dircolors" ]]; then
        eval "$(dircolors -b $HOME/.dircolors)"
    fi
fi

# Add PATH_DIRS to PATH
for _dir in $_zshrc_path; do
    if [[ -d "$_dir" && "${PATH#*$_dir}" == "$PATH" ]]; then
        PATH="$_dir:$PATH"
    fi
done
export PATH

unset _dir
unset _zshrc_path

# Set GPG_TTY if gpg is installed
if hash gpg &>/dev/null; then
    export GPG_TTY=$(tty)
fi

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
