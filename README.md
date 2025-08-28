## nvim

**配置路径:** `~/.config/nvim/`



## ranger

需要先安装 ranger-devicons2 （配置目录内已安装）


**配置路径:** `~/.config/ranger/`


## tmux

**配置路径:** `~/.config/tmux/`

## 配置文件

> 包含：tmux、zimfw、zshrc、ranger等

```bash

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
```


## 其它配置（参考）

```bash

# NVM ------------------------------------------------------
export NVM_DIR=~/.nvm
source /opt/homebrew/opt/nvm/nvm.sh

# 一个环境变量 | VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

```
