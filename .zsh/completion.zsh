# vim: ft=zsh

autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

# aws
command -v aws_completer &>/dev/null && complete -C aws_completer aws
