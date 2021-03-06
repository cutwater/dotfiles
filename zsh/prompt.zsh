# vim: ft=zsh

# HELP:
# Prompt Escapes:
# %B (%b) - start bold mode
# %F (%f) - start (stop) using different foreground color
#
# Colors:
# 0     black
# 1     red
# 2     green
# 3     yellow
# 4     blue
# 5     magenta
# 6     cyan
# 7     white
#
# $1v - value of the first element of psvar array parameter

autoload -Uz vcs_info
autoload -U colors && colors

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats " (%s:%b)%u%c "

precmd() {
    psvar=()

    vcs_info
    [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}

if [[ -z "$SSH_CLIENT" ]]; then
    prompt_user="%F{1}%n%F{6}"
else
    prompt_user="%n%F{3}@%m%F{6}"
fi


PS1="%B%F{6}[${prompt_user} %1~]%F{2}%1v%f%b%# "
