### general

#------------------------------------------------------------
# Load RVM into a shell session *as a function*
#------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

### Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

### colors
#-------------------------------------------------------------
# set colors
#-------------------------------------------------------------
export TERM=xterm-256color
#tput sgr0

#-------------------------------------------------------------
# Define a few Color's
#-------------------------------------------------------------
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
# Sample Command using color: echo -e "${CYAN}This is BASH
#${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n

### aliases
alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias ll="ls -l --group-directories-first"
alias ls='ls -hF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files

### shell
source /etc/bash_completion.d/git
export PS1='\w$(__git_ps1 "[%s]") > '
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#PS1='[\W(__git_ps1 " (%s)")]\$ '
#export PROMPT_COMMAND='echo -ne "\033]0;{PWD/#$HOME/~}\007"'

### functions
#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }
# Count almost-all files by lines of given directory
function fwc() { ls -A $* | wc -l; }


