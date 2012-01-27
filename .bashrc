### Load RVM into a shell session *as a fu    nction*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
### Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

### colors
export TERM=xterm-256color
# Define a few Color's
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
#alias tmux="TERM= 256color

### shell
source /etc/bash_completion.d/git
export PS1='\w$(__git_ps1 "[%s]") > '

username=`whoami`

function get_time_period {
    hour=$(date +"%k")
    if [ $hour -lt 12 ]; then
      echo "Morning"
    elif [ $hour -ge 12 ] && [ $hour -lt 17 ]; then
      echo "Afternoon"
    else
      echo "Evening"
    fi
}

echo -e "$GREEN-######################-"
echo -e "$YELLOW -Good $(get_time_period) $username-."
echo -e "$GREEN-######################-"

tput sgr0
