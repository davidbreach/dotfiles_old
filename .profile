
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Prompt

COLOR1="\[\033[0;36m\]"
COLOR2="\[\033[0;32m\]"
COLOR3="\[\033[0;36m\]"
COLOR4="\[\033[0;37m\]"

if [ "$UID" = "0" ];
then
# I am root
COLOR2="\[\033[1;31m\]"
fi

PS1="$COLOR2($COLOR3\u@\h$COLOR2:$COLOR1\w$COLOR2)$COLOR1\\$ $COLOR4"

# Term title

# [ $TERM == "xterm" ] \
# && unset  PROMPT_COMMAND \
# || export PROMPT_COMMAND='echo -ne "\033]0;`whoami` | `basename ${DIRSTACK}`\007\033k\033\134"'

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export DISPLAY=:0.0
export EDITOR=/usr/bin/vim
source ~/.bashrc
