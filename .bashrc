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
IBLACK="\[\033[0;90m\]"       # Black
IRED="\[\033[0;91m\]"         # Red
IGREEN="\[\033[0;92m\]"       # Green
IYELLOW="\[\033[0;93m\]"      # Yellow
IBLUE="\[\033[0;94m\]"        # Blue
IPURPLE="\[\033[0;95m\]"      # Purple
ICYAN="\[\033[0;96m\]"        # Cyan
IWHITE="\[\033[0;97m\]"       # White

# Sample Command using color: echo -e "${CYAN}This is BASH
#${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n

### aliases
alias brc='vim ~/.bashrc && source ~/.bashrc'
alias ba='vim ~/.bash_aliases'

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

export PS1='\h-\T$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$GREEN'"$(__git_ps1 " [%s]☮  "); \
  else \
    # @5 - Changes to working tree
    echo "'$IRED'"$(__git_ps1 " [%s]⚠  ") ; \
  fi) '$CYAN$PathShort$Color_Off' "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$IYELLOW$PathShort$Color_Off' ☇ '$GREEN'"; \
fi)'

### functions
#-------------------------------------------------------------
# File & string-related functions:
#-------------------------------------------------------------
# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }
# Count almost-all files by lines of given directory
function fwc() { ls -A $* | wc -l; }
