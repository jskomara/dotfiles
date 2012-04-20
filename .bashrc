#------------------------------------------------------------
# Load RVM into a shell session *as a function*
#------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

### Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### functions
#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }
# Count almost-all files by lines of given directory
function fwc() { ls -A $* | wc -l; }

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

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Sample Command using color: echo -e "${CYAN}This is BASH
#${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n

### aliases
alias brc='vim ~/.bashrc && source ~/.bashrc'
alias ba='vim ~/.bash/aliases'

alias ll="ls -l --group-directories-first"
alias ls='ls -hF --color'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files

alias gs='git status'
alias gd='git diff'
alias gb='git branch -a -v'

### shell
source /etc/bash_completion.d/git
#export PS1='\w$(__git_ps1 "[%s]") > '
#PS1='[\W(__git_ps1 " (%s)")]\$ '
#export PROMPT_COMMAND='echo -ne "\033]0;{PWD/#$HOME/~}\007"'

export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " [%s]☮  "); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " [%s]⚠  ") ; \
  fi) '$IYellow$PathShort$Color_Off' "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off' ☇ "; \
fi)'

### functions
#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }
# Count almost-all files by lines of given directory
function fwc() { ls -A $* | wc -l; }
