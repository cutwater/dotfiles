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

case "$_zshrc_platform" in
    macos)
        _zshrc_path+=(
            # Rustup
            "/opt/homebrew/opt/rustup/bin"
            # JetBrains Toolbox
            "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
        )

        eval "$(/opt/homebrew/bin/brew shellenv)"

        export LSCOLORS='GxFxCxDxBxegedabagaced'
    ;;
    linux)
        _zshrc_path+=("/opt/bin")

        # export LANGUAGE=en_US:en
        export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
        # Use system qemu
        export LIBVIRT_DEFAULT_URI="qemu:///system"

        if [[ -f "$HOME/.dircolors" ]]; then
            eval "$(dircolors -b $HOME/.dircolors)"
        fi
    ;;
esac

# Construct PATH
typeset -U path PATH

_zshrc_path+=($path)
_zshrc_existing=()

for _dir in "${_zshrc_path[@]}"; do
    [[ -d "$_dir" ]] && _zshrc_existing+=("$_dir")
done

path=($_zshrc_existing)
unset _dir _zshrc_path _zshrc_existing

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

# Go
if command -v go &>/dev/null; then
    export GOBIN="$HOME/.local/bin"
    export GOPATH="$HOME/.local/share/go"
    export GOMODCACHE="$HOME/.cache/go/mod"
    export GOCACHE="$HOME/.cache/go/build"
fi
