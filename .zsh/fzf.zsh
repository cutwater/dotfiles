# vim: ft=zsh

if command -v fzf &>/dev/null; then
    eval "$(fzf --zsh)"
    bindkey '^F' fzf-cd-widget
fi
