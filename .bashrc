#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lah --color=auto'
alias EDITOR="/usr/bin/vim"
alias df='df -h'
alias du='du -sh'
alias ta='tmux attach'


PS1='\[\e[0;33m\]\t \[\e[0;36m\][\u] \[\e[0;32m\]\W \[\e[0;37m\]$ '


export EDITOR="vim"
export BROWSER="firefox"
