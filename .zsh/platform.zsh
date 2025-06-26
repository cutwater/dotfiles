# vim: ft=zsh

case $(uname) in
    Linux)
        PLATFORM='linux'
        ;;
    Darwin)
        PLATFORM='macos'
        ;;
    *)
        PLATFORM='unknown'
        ;;
esac
