export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git docker docker-compose fzf python nvm sudo autojump tmux zsh-autopair zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -z "$TMUX" ]; then
    tmux attach-session -t 4 || tmux new
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

### ALIASES
if [[ -n "$WSL_DISTRO_NAME" ]]; then
    alias pbcopy='clip.exe'
    alias pbpaste='powershell.exe -Command get-clipboard'
fi

if [[ -x "$(command -v docker)" ]]; then
    alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
    alias hadolint="docker run --rm -i hadolint/hadolint"
fi

alias myip='curl ifconfig.co'

# Init starship prompt
eval "$(starship init zsh)"


