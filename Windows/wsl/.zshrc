export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim

ZSH_THEME="robbyrussell"

plugins=(git docker docker-compose python nvm sudo autojump tmux zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi


# Changing "ls" to "exa"
if [ -x "$(command -v exa)" ]; then
    alias ls='exa --icons -alg --color=always --group-directories-first' # my preferred listing
    alias la='exa --icons -a  --color=always --group-directories-first'  # all files and dirs
    alias ll='exa --icons -lg  --color=always --group-directories-first'  # long format
    alias lt='exa --icons -aTg --color=always --group-directories-first' # tree listing
    alias l.='exa --icons -ag | egrep "^\."'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
    *aosc*)                  ICON="";;
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

### ALIASES
alias pbcopy='clip.exe'
alias pbpaste='powershell.exe -Command get-clipboard'
alias apt='sudo apt'
alias vimconf="$EDITOR ~/.config/nvim/init.vim"
alias zshconf="$EDITOR ~/.zshrc"
alias a='php artisan'
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
eval "$(starship init zsh)"
