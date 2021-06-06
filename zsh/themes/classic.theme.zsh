setopt prompt_subst

autoload -U colors && colors
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats "%b%u%c"

prompt_begin() {
    echo -n "%{$fg_bold[cyan]%}["
}

prompt_end() {
    echo -n ']'
}

prompt_user() {
    echo -n "%{$fg_bold[red]%}%n"
}

prompt_host() {
    if [[ -n "$SSH_CLIENT" ]]; then
        echo -n "%{$fg_bold[yellow]%}@%m"
    fi
}

prompt_dir() {
    echo -n " %{$fg_bold[cyan]%}%1~"
}

prompt_git() {
    vcs_info
    if [[ -n "$vcs_info_msg_0_" ]]; then
        echo -n " \
%{$fg_no_bold[cyan]%}git:(\
%{$fg_bold[yellow]%}\
$vcs_info_msg_0_\
%{$fg_no_bold[cyan]%})"
    fi
}

build_prompt() {
    prompt_begin

    prompt_user
    prompt_host
    prompt_dir

    local _prompt_ext=''
    _prompt_ext+="$(prompt_git)"

    if [[ -n "${_prompt_ext}" ]]; then
        echo -n " //${_prompt_ext}"
    fi


    prompt_end
}

PROMPT='%{%f%b%k%}$(build_prompt)%{%f%b%k%}%# '
