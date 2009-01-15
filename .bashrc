#source ~/.profile
#-------------------
# Personnal Aliases
#-------------------

export TERM="xterm-color"
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.

alias h='history'
alias j='jobs -l'
alias r='rlogin'
alias which='type -all'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
#alias print='/usr/bin/lp -o nobanner -d $LPDEST'   # Assumes LPDEST is defined 
#alias pjet='enscript -h -G -fCourier9 -d $LPDEST'  # Pretty-print using enscript
alias background='xv -root -quit -max -rmode 5' # put a picture in the background
alias vi='vim'
alias du='du -h'
alias df='df -kh'

# The 'ls' family (this assumes you use the GNU ls)
alias "ls"="ls -G"
alias "la"="ls -Gla"
#alias "ls"='ls -hF --color'	# add colors for filetype recognition
alias "lx"='ls -lXB'		# sort by extension
alias "lk"='ls -lSr'		# sort by size
#alias "la"='ls -Al --color'	# show hidden files
alias "lr"='ls -lR'		# recursice ls
alias "lt"='ls -ltr'		# sort by date
alias "lm"='ls -al |more'		# pipe through 'more'
#alias "tree"='tree -Cs'		# nice alternative to 'ls'
#alias "tree"="find . -type d | sed -e 1d -e 's/[^-][^\/]*\/--/g' -e 's/^/ /' -e 's/-/|-/'"


# tailoring 'less'
alias more='less'
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/local/bin/lesspipe.sh %s 2>&-' # Use this if lesspipe.sh exists
#export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
export LESS='-i -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

# fix line-drawing characters for mc
alias mc='mc -a'

# default bash behavior (I prefer menu-complete)
# tab iterates through the completions
bind 'TAB:menu-complete'

# set newsserver for slrn
NNTPSERVER='giganews.nildram.co.uk' && export NNTPSERVER
COLORTERM=y && export COLORTERM

#-----------------------------------
# File & strings related functions:
#-----------------------------------

function ff() { find . -name '*'$1'*' ; }                 # find a file
function fe() { find . -name '*'$1'*' -exec $2 {} \; ; }  # find a file and run $2 on it 
function fstr() # find a string in a set of files
{
    if [ "$#" -gt 2 ]; then
        echo "Usage: fstr \"pattern\" [files] "
        return;
    fi
    SMSO=$(tput smso)
    RMSO=$(tput rmso)
    find . -type f -name "${2:-*}" -print | xargs grep -sin "$1" | \
sed "s/$1/$SMSO$1$RMSO/gI"
}

#=========================================================================
# PROGRAMMABLE COMPLETION - ONLY SINCE BASH-2.04
# You will in fact need bash-2.05 for some features
#=========================================================================

if [ "${BASH_VERSION%.*}" \< "2.05" ]; then
    echo "You will need to upgrade to version 2.05 for programmable completion"
    return
fi

shopt -s extglob        # necessary
set +o nounset		# otherwise some completions will fail

complete -A hostname   rsh rcp telnet rlogin r ftp ping disk
complete -A command    nohup exec eval trace gdb
complete -A command    command type which
complete -A export     printenv
complete -A variable   export local readonly unset
complete -A enabled    builtin
complete -A alias      alias unalias
complete -A function   function
complete -A user       su mail finger

complete -A helptopic  help     # currently same as builtins
complete -A shopt      shopt
complete -A stopped -P '%' bg
complete -A job -P '%'     fg jobs disown

complete -A directory  mkdir rmdir
complete -A directory   -o default cd

complete -f -d -X '*.gz'  gzip
complete -f -d -X '*.bz2' bzip2
complete -f -o default -X '!*.gz'  gunzip
complete -f -o default -X '!*.bz2' bunzip2
complete -f -o default -X '!*.pl'  perl perl5
complete -f -o default -X '!*.ps'  gs ghostview ps2pdf ps2ascii
complete -f -o default -X '!*.dvi' dvips dvipdf xdvi dviselect dvitype
complete -f -o default -X '!*.pdf' acroread pdf2ps 
complete -f -o default -X '!*.+(pdf|ps)' gv 
complete -f -o default -X '!*.texi*' makeinfo texi2dvi texi2html texi2pdf
complete -f -o default -X '!*.tex' tex latex slitex 
complete -f -o default -X '!*.lyx' lyx 
complete -f -o default -X '!*.+(jpg|gif|xpm|png|bmp)' xv gimp
complete -f -o default -X '!*.mp3' mpg123 
complete -f -o default -X '!*.ogg' ogg123 


# This is a 'universal' completion function - it works when commands have
# a so-called 'long options' mode , ie: 'ls --all' instead of 'ls -a' 
_universal_func ()
{
    case "$2" in
	-*)	;;
	*)	return ;;
    esac

    case "$1" in
	\~*)	eval cmd=$1 ;;
	*)	cmd="$1" ;;
    esac
    COMPREPLY=( $("$cmd" --help | sed  -e '/--/!d' -e 's/.*--\([^ ]*\).*/--\1/'| \
grep ^"$2" |sort -u) )
}
complete  -o default -F _universal_func ldd wget bash id info

# Menu
#source ~/.menu

# End:
