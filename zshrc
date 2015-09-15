# vim: ft=zsh

# '.zshrc' is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.

source "$HOME/.zsh/platform"
source "$HOME/.zsh/config"
source "$HOME/.zsh/aliases"
source "$HOME/.zsh/completion"
source "$HOME/.zsh/prompt"
source "$HOME/.zsh/bindings"
source "$HOME/.zsh/environ"

[ -f "$HOME/.zsh/local" ] && . "$HOME/.zsh/local"

