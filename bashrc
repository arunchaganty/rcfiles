export TERM=xterm-256color

# Check for an interactive session
[ -z "$PS1" ] && return

export PS1='\[\033[01;32m\][\u@\h\[\033[01;32m\] \W \[\033[01;33m\]$(parse_git_branch)\[\033[01;33m\]]\$ \[\033[00m\]'

source $HOME/.shells/exports
source $HOME/.shells/functions
source $HOME/.shells/alias
source $HOME/.shells/welcome

[[ -f $HOME/.shells-local/exports ]] && source $HOME/.shells-local/exports
[[ -f $HOME/.shells-local/functions ]] && source $HOME/.shells-local/functions
[[ -f $HOME/.shells-local/alias ]] && source $HOME/.shells-local/alias
