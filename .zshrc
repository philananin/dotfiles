source ~/.path
source ~/.exports
source ~/.aliases

ZSH=$HOME/.oh-my-zsh
 
case "$OSTYPE" in
    cygwin*)
        source ~/.zshrc-cygwin
        ;;
    darwin*)
        source ~/.zshrc-osx
        ;;
esac

source $ZSH/oh-my-zsh.sh
