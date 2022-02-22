export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git nvm npm node autojump tmux zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias pbcopy='clip.exe'
alias pbpaste='powershell.exe -Command get-clipboard'

# Changing "ls" to "exa"
alias ls='exa --icons -al --color=always --group-directories-first' # my preferred listing
alias la='exa --icons  -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa --icons  -l --color=always --group-directories-first'  # long format
alias lt='exa --icons  -aT --color=always --group-directories-first' # tree listing
alias l.='exa --icons  -a | egrep "^\."'
cd ~

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

