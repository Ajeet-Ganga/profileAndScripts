###############################################################################
# Detect OS and set variable
###############################################################################
if [ "$(uname)" == "Darwin" ]; then
        export OS=MAC
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        export OS=LIN
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        export OS=WIN
elif [ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]; then
        export OS=WIN
else
        echo "!!! OS coulnd't be determined."
fi

if [ "$OS" == "MAC" ]; then
	alias ls='ls -hF '                 # classify files in colour
	export CLICOLOR=1
	export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
	export JAVA_HOME=$(/usr/libexec/java_home)	# JAVA HOME on MAC
elif [ "$OS" == "LIN" ]; then
	echo "No ls alias"
elif [ "$OS" == "WIN" ]; then
	alias ls='ls -hF --color=tty'                 # classify files in colour
fi

###############################################################################
# Initialization Banner
###############################################################################
echo ""
echo '       #################################################################'
echo '       #                                                               #'
echo '       #  Custom bashrc+prompt for Ajeet Ganga                         #'
echo '       #    Default prompt = user@host:pwd                             #'
echo '       #                     [commandHistoryNumber]$                   #'
echo '       #                                                               #'
echo '       #################################################################'
echo ""
echo 'Custom prompt from : https://raw.githubusercontent.com/Ajeet-Ganga/profileAndScripts/master/bashrc'
echo 'Git location  : https://github.com/Ajeet-Ganga/profileAndScripts.git'
echo "OS = " $OS
echo "JAVA_HOME" = $JAVA_HOME
echo ""
git config --global user.name "Ajeet Ganga"
git config --global color.ui true
# git config --global core.autocrlf true


###############################################################################
# GIT commans alias
###############################################################################

alias gb='git branch -a --color -vv'

alias gd12='git diff'
alias gd23='git diff --cached'
alias gd13='git diff HEAD'
alias gd34='git diff origin/develop...HEAD'

alias gd-wi='gdiff12'
alias gd-ih='gdiff23'
alias gd-wh='gdiff13'
alias gd-hH='gdiff34'

alias glog='git log --pretty=format:"%h %x09 %ar %x09 %ae %x09 %s"'
alias glogshort='git log --pretty=oneline --abbrev-commit'

alias gs='git status'
alias gss='git status -s'

alias gssu='git status -suno'


alias git-wtf='ruby ~/profileAndScripts/git-wtf.ruby'

alias c='clear'

# gitACP() ash function to 'added+committed+pushed'
# param1 = File to added+committed+pushed
# param2 = commit message
function gitACP() {
    git add $1
    git commit -a -m "$2"
    git push
}

###############################################################################
# MVN alias
###############################################################################
alias m-cit="mvn clean install "
alias m-ci="mvn clean install -DskipTests=true"

###############################################################################
# History related
###############################################################################
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
# export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:pwd' # Ignore the ls command as well
#
# Whenever displaying the prompt, write the previous line to disk
# export PROMPT_COMMAND="history -a"

export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls:history' # Ignore the ls command as well
export PROMPT_COMMAND="history -a"
alias hgrep="history | grep"
###############################################################################
# Aliases
###############################################################################
# Some people use a different file for aliases
 if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
 fi

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

###############################################################################
# Misc :)
###############################################################################

alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

function greprec() {
	grep -ir --include $2 $1 .
}

function egreprec() {
	egrep -ir --include $2 $1 .
}

# Some shortcuts for different directory listings

alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #

alias c='clear'


# Terminal Prompt
# line 1 : user@host: git-branch : short-dir
# line 2 : cmd_history_number
#OLD  export gitprompt='\[\e]1;\w\a\]\n\[\e[32m\]\u@\h:\[\e[35m\]\[$(__git_ps1 "%s")\]:\[\e[33m\]\w\[\e[0m\]\n[\!]\$'
export gitprompt='\[\e[32m\]\u@\[\e[35m\]\h:\[\e[32m\]\[$(__git_ps1 "%s")\]:\[\e[35m\]\w\[\e[0m\]\n[\!]\$'
alias prgit='export PS1=$gitprompt'

# MacPorts Installer addition, adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

###############################################################################
# Terminal prompt
###############################################################################

# Terminal Prompt
# line 1 : user@host : short-dir
# line 2 : cmd_history_number
#export normal='\[\e]1;\w\a\]\n\[\e[32m\]\u@\h:\[\e[35m\]:\[\e[33m\]\w\[\e[0m\]\n[\!]\$'
# OLD export normalprompt='\[\e]1;\w\a\]\n\[\e[32m\]\u@\h:\[\e[35m\]:\[\e[33m\]\w\[\e[0m\]\n[\!]\$'
export normalprompt='\[\e[32m\]\u@\[\e[35m\]\h:\[\e[32m\]:\[\e[32m\]\w\[\e[0m\]\n[\!]\$'
alias prdefault='export PS1=$normalprompt'

export PS1=$normalprompt

#Create and Change directory to
mkdcd () { mkdir -p "$@" && cd "$@"; }
alias showprocess='ps -U aganga -F'


###############################################################################
# Python bashrc setup
#   http://conjurecode.com/enable-auto-complete-in-python-interpreter/
###############################################################################
export PYTHONSTARTUP=~/.pythonrc


###############################################################################
# Docker related stuff
###############################################################################
alias dkps='docker ps -a'
alias dksp='docker stop'
alias dkst='docker start'
alias dkr='docker rm'
alias dkl='docker logs -f'
alias dke='eval $(docker-machine env)'
# Start a bash shell on container interactively
function dkbash() { docker exec -it "$1" /bin/bash ;}
function dkbashu() { docker exec -u "$2" -it "$1" /bin/bash ;}
# Stop and remove a container
function dksr() { docker stop "$1"; docker rm "$1";}

# Docker machine related
alias dkm-se='docker-machine start "default" && eval $(docker-machine env)'


# !!! dangerous
# Stop all containers
function dkdangerAllSp()  { docker stop $(docker ps -a -q) ; }
# Remove all containers
function dkdangerAllRm()  { docker rm $(docker ps -a -q) ;}

