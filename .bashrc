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


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
