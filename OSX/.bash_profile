#reference: https://coombes.nz/blog/posh-git-on-mac/
#use brew to install git, bash-completion, git-flow-avh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PROMPT_COMMAND='__git_ps1 "\\[\[\e[0;32m\]\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'$PROMPT_COMMAND
