export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git docker docker-compose fzf python nvm sudo autojump tmux zsh-autopair zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -z "$TMUX" ]; then
    tmux attach-session -t 4 || tmux new
fi

# Changing "ls" to "exa"
if [ -x "$(command -v eza)" ]; then
    alias ls='eza --icons -alg --color=always --group-directories-first' # my preferred listing
    alias la='eza --icons -a  --color=always --group-directories-first'  # all files and dirs
    alias ll='eza --icons -lg  --color=always --group-directories-first'  # long format
    alias lt='eza --icons -aTg --color=always --group-directories-first' # tree listing
    alias l.='eza --icons -ag | egrep "^\."'
fi

### ALIASES
if [[ -x "$(command -v docker)" ]]; then
    alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
    alias hadolint="docker run --rm -i hadolint/hadolint"
fi

# Init starship prompt
eval "$(starship init zsh)"
