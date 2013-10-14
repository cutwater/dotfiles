# vim: ft=zsh

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/prompt
. ~/.zsh/bindings

[ -f "$HOME/.zsh/local" ] && . "$HOME/.zsh/local"

[ -f "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
