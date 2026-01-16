export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim

ZSH_THEME="robbyrussell"

plugins=(git docker docker-compose python nvm sudo autojump tmux zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi


# Changing "ls" to "exa"
if [ -x "$(command -v eza)" ]; then
    alias ls='eza --icons -alg --color=always --group-directories-first' # my preferred listing
    alias la='eza --icons -a  --color=always --group-directories-first'  # all files and dirs
    alias ll='eza --icons -lg  --color=always --group-directories-first'  # long format
    alias lt='eza --icons -aTg --color=always --group-directories-first' # tree listing
    alias l.='eza --icons -ag | egrep "^\."'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### ALIASES
if [[ -n "$WSL_DISTRO_NAME" ]]; then
    alias pbcopy='clip.exe'
    alias pbpaste='powershell.exe -Command get-clipboard'
fi

alias pbcopy='clip.exe'
alias pbpaste='powershell.exe -Command get-clipboard'
alias apt='sudo apt'
alias vimconf="$EDITOR ~/.config/nvim/init.vim"
alias zshconf="$EDITOR ~/.zshrc"
eval "$(starship init zsh)"
