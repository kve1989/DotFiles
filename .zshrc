export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git autojump tmux zsh-autopair zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# alias reboottowin="sudo su -c 'efibootmgr -n 0000 && sync && reboot'"
# alias dnf="sudo dnf"
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
if [ -x "$(command -v exa)" ]; then
    alias ls='exa --icons -agl --color=always --group-directories-first' # my preferred listing
    alias la='exa --icons  -a --color=always --group-directories-first'  # all files and dirs
    alias ll='exa --icons  -lg --color=always --group-directories-first'  # long format
    alias lt='exa --icons  -agT --color=always --group-directories-first' # tree listing
    alias l.='exa --icons  -ag | egrep "^\."'
fi

# find out which distribution we are running on
LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

# set an icon based on the distro
# make sure your font is compatible with https://github.com/lukas-w/font-logos
case $_distro in
    *kali*)                  ICON="ﴣ";;
    *arch*)                  ICON="";;
    *debian*)                ICON="";;
    *raspbian*)              ICON="";;
    *ubuntu*)                ICON="";;
    *elementary*)            ICON="";;
    *fedora*)                ICON="";;
    *coreos*)                ICON="";;
    *gentoo*)                ICON="";;
    *mageia*)                ICON="";;
    *centos*)                ICON="";;
    *opensuse*|*tumbleweed*) ICON="";;
    *sabayon*)               ICON="";;
    *slackware*)             ICON="";;
    *linuxmint*)             ICON="";;
    *alpine*)                ICON="";;
    *nixos*)                 ICON="";;
    *devuan*)                ICON="";;
    *manjaro*)               ICON="";;
    *rhel*)                  ICON="";;
    *macos*)                 ICON="";;
    *)                       ICON="";;
esac

export STARSHIP_DISTRO="$ICON"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PYTHONDONTWRITEBYTECODE=1

#Launch Starship
eval "$(starship init zsh)"
