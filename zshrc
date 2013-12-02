# vim: ft=zsh

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/prompt
. ~/.zsh/bindings

[ -f "$HOME/.zsh/local" ] && . "$HOME/.zsh/local"

. "$HOME/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh"
