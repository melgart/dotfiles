#!/bin/bash

# bind commandline to vi
set -o vi

source ~/.git-prompt.sh

# custom prompt
#PS1="[\h:]$ "
export PS1='\n\d \t \[$(tput setaf 166)\]\u \[$(tput setaf 7)\]at \[$(tput setaf 33)\]\h\n\[$(tput setaf 6)\]\w$(__git_ps1)\n\[$(tput setaf 7)\]\$\[$(tput sgr0)\] '

. ~/.bash/aliases
. ~/.bash/env

