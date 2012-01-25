### Load RVM into a shell session *as a fu    nction*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
### Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

### colors
export TERM=xterm-256color

### aliases
#alias tmux="TERM= 256color

### shell
source /etc/bash_completion.d/git
export PS1='\w$(__git_ps1 "[%s]") > '
