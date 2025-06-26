# vim: ft=zsh

case $(uname) in
    Linux)
        _zshrc_platform='linux'
        ;;
    Darwin)
        _zshrc_platform='macos'
        ;;
    *)
        _zshrc_platform='unknown'
        ;;
esac
