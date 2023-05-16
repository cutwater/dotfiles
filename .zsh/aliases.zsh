# vim: ft=zsh

## ls
if [[ "$PLATFORM" == "linux" ]]; then
    alias open='xdg-open'
    alias ls='ls --color=auto --group-directories-first'
elif [[ "$PLATFORM" == 'macos' ]]; then
    alias ls='ls -G'
fi

alias vim='nvim'

alias ll='ls -l'
alias la='ls -la'

alias exa='exa --group-directories-first'

## SSH
alias ssh-nocheck='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

## Git
alias gst='git status'

## Global aliases
# Suppress output
alias -g NO='&> /dev/null'
# Suppress error messages
alias -g NE='2> /dev/null'
# Highlight errors
alias -g HE='2>>( sed -e "s/.*/$fg_bold[red]&$reset_color/" 1>&2 )'
alias -g X='| xargs'
