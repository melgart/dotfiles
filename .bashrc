#!/bin/bash

# bind commandline to vi
set -o vi

source ~/.git-prompt.sh

# custom prompt
#export PS1='\n\d \t \[$(tput setaf 166)\]\u \[$(tput setaf 7)\]at \[$(tput setaf 33)\]\h\n\[$(tput setaf 6)\]\w$(__git_ps1)\n\[$(tput setaf 7)\]\$\[$(tput sgr0)\] '
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)") $ '

. ~/.bash/aliases
. ~/.bash/env



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#
#export CPPFLAGS="-I/usr/local/opt/openjdk/include"
#export LDFLAGS="-L/usr/local/opt/zlib/lib" 
#export CPPFLAGS="-I/usr/local/opt/zlib/include"
#
#


export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
. "$HOME/.cargo/env"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
