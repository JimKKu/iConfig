# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/hsk/.local/share/nvim/lazy/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/hsk/.local/share/nvim/lazy/fzf/bin"
fi

source <(fzf --zsh)
