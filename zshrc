# vim: ft=zsh

# '.zshrc' is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.

source "$HOME/.zsh/platform.zsh"
source "$HOME/.zsh/config.zsh"
source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/completion.zsh"
source "$HOME/.zsh/bindings.zsh"
source "$HOME/.zsh/environ.zsh"
source "$HOME/.zsh/prompt.zsh"


if [[ -f "$HOME/.zsh/local.zsh" ]]; then
  source "$HOME/.zsh/local.zsh"
fi

