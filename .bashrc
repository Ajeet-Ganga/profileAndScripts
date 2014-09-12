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

alias c='clear'

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

# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #


