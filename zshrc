
# NVM ------------------------------------------------------
export NVM_DIR=~/.nvm
source /opt/homebrew/opt/nvm/nvm.sh

# 一个环境变量 | VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"




# MyBins ----------------------------------------------------
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/bin/bin_args

# -------------------------- Alias --------------------------

alias ra='ranger'
alias lg='lazygit'
alias vim='nvim'
# ------------------------  iConfig -------------------------

# Jenv
export JENV_ROOT="$HOME/DevTools/jenv"
export PATH="$JENV_ROOT/bin:$PATH"
eval "$(jenv init -)"
## fzf | 文件搜索
source ~/.config/zsh/fzf.zsh

## Tmux
tmux source ~/.config/tmux/tmux.conf
