# vim: ft=zsh

# rustup
if [[ "$_zshrc_platform" == 'macos'
      && -d /opt/homebrew/opt/rustup/share/zsh/site-functions ]]; then
  fpath+=/opt/homebrew/opt/rustup/share/zsh/site-functions
fi

autoload -Uz compinit
if [[ $(date +%j) != $(date -r "$HOME/.zcompdump" +%j 2>/dev/null) ]]; then
    compinit
else
    compinit -C
fi

autoload -Uz bashcompinit && bashcompinit

# aws
if command -v aws_completer &>/dev/null; then
    complete -C aws_completer aws
fi

# kubectl
if command -v kubectl &>/dev/null; then
    source <(kubectl completion zsh)
fi

# fzf
if command -v fzf &>/dev/null; then
    eval "$(fzf --zsh)"
    bindkey '^F' fzf-cd-widget
fi
