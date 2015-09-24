# ~/.zshrc
# zsh config file

# oh-my-zsh config
ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Grid Show Systems environment setup
source ~/.env_grid

# Alias to call vi instead of vim
alias vi='vim'
alias clc="clear"

export PATH=$PATH:/home/patou/.gem/ruby/2.2.0/bin
# Set the default terminal to terminator
#export TERM=/usr/bin/terminator


export PATH=$PATH:/usr/lib/jvm/java-8-openjdk/bin
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/

