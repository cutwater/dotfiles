# vim: ft=zsh

# Use emacs key bindings
bindkey -e

bindkey "^[[1;5D" backward-word             # [Ctrl-RightArrow] - move forward one word
bindkey "^[[1;5C" forward-word              # [Ctrl-LeftArrow] - move backward one word

bindkey '^?' backward-delete-char               # [Backspace] - delete backward
if [[ "${terminfo[kdch1]}" != "" ]]; then       # [Delete] - delete forward
    bindkey "${terminfo[kdch1]}" delete-char
else
    bindkey "^[[3~" delete-char
fi

bindkey "^R" history-incremental-search-backward  # [Ctrl-R] - Search history

# Common bindings from default /etc/inpputrc
# [Home] - Go to beginning of line
# [End] - Go to end of line

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

if [[ "${terminfo[khome]}" != "" ]]; then
    bindkey "${terminfo[khome]}" beginning-of-line
fi

if [[ "${terminfo[kend]}" != "" ]]; then
    bindkey "${terminfo[kend]}" end-of-line
fi

