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
plugins=(git lein ruby brew debian gem vi-mode)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:$HOME/bin
export PATH="/usr/share/intellij/bin:/usr/share/webstorm/bin:$HOME/.rbenv/bin:$PATH" # todo: not very x-platform
export NODE_PATH="/usr/local/lib/jsctags/:$NODE_PATH"
export SCALA_HOME=/usr/local/opt/scala/libexec
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVACMD=drip
export DRIP_SHUTDOWN=30
export SBT_OPTS="-XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -XX:PermSize=128M -XX:MaxPermSize=512M"
command -v rbenv > /dev/null 2&>1 && eval "$(rbenv init -)"

alias tmux="TERM=screen-256color-bce tmux"

