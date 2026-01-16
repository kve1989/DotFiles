#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias reboottowin="sudo su -c 'efibootmgr -n 0000 && sync && reboot'"
alias myip='curl ifconfig.co'
alias dusage='du -ah --max-depth=1 $(pwd) | sort -rh | head -n 10'
alias bfiles='/usr/bin/ls --human-readable --size -1 -S --classify | head -n 20'

function ipa {
  curl -s https://ifconfig.co/json?ip=$1 | jq 'del(.usage_agent)'
}

function ipc {
  curl -s https://ifconfig.co/json?ip=$1 | jq '.country'
}

# Changing "ls" to "exa"
alias ls='exa --icons -al --color=always --group-directories-first' # my preferred listing
alias la='exa --icons  -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa --icons  -l --color=always --group-directories-first'  # long format
alias lt='exa --icons  -aT --color=always --group-directories-first' # tree listing
alias l.='exa --icons  -a | egrep "^\."'

eval "$(starship init bash)"
