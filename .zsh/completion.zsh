# vim: ft=zsh

# rustup
if [[ "$_zshrc_platform" == 'macos'
      && -d /opt/homebrew/opt/rustup/share/zsh/site-functions ]]; then
  fpath+=/opt/homebrew/opt/rustup/share/zsh/site-functions
fi

autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

# aws
command -v aws_completer &>/dev/null && complete -C aws_completer aws
