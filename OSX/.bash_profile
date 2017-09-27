if [ -f $(brew --prefix)/etc/bash_completion ]; 
then
  . $(brew --prefix)/etc/bash_completion
fi

function git-clean {
  if [ -z "$1" ]
  then
    xargs git branch -d <~/tmp/merged-branches
    echo "deleting the prep branch removal file"
    rm ~/tmp/merged-branches
  fi
  if [ "$1" == "--prep" ]
  then
    echo "pruning remote branches cache."
    git remote prune origin 
    
    echo "creating branch removal prep file."
    git branch --merged >~/tmp/merged-branches 
    
    echo "opening branch removal prep file for your review."
    code ~/tmp/merged-branches
  fi
}

cd Projects
export PROMPT_COMMAND='__git_ps1 "\\[\[\e[0;32m\]\u@\h \[\e[0;33m\]\w" " \[\e[1;34m\]\n\$\[\e[0m\] ";'$PROMPT_COMMAND
