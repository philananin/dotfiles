# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git lein ruby brew command-not-found debian gem)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:$HOME/bin
export PATH="/usr/share/intellij/bin:/usr/share/webstorm/bin:$HOME/.rbenv/bin:$PATH" # todo: not very x-platform
export NODE_PATH="/usr/local/lib/jsctags/:$NODE_PATH"
eval "$(rbenv init -)"
. ~/dev/src/nvm/nvm.sh
alias sdproj="cd /home/ubuntu/dev/betstream/client/sportsdesk/trunk/"
alias dotfiles="cd /home/ubuntu/.dotfiles/"
alias bsproj="cd /home/ubuntu/dev/betstream/server/middleware/branches/restructure"
alias scripts="cd /home/ubuntu/dev/scripts"
alias tmux="TERM=screen-256color-bce tmux"
function mkcd() {
  [ -n "$1" ] && mkdir -p "$@" && cd "$1";
}
