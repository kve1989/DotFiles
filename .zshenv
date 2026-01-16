. "$HOME/.cargo/env"
export PATH=$PATH:$HOME/.local/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1
export EDITOR=nvim
export VISUAL=nvim
