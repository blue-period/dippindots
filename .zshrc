alias v="nvim"
alias cat='bat --style=plain'

# Editor
export EDITOR="nvim -u $HOME/.config/nvim/minimal.lua"
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"

# Shell behavior
export KEYTIMEOUT=10

export FZF_DEFAULT_OPTS='
  --color=fg:#99d1ce,bg:#0c1014
  --color=hl:#d26937
  --color=fg+:#d3ebe9,bg+:#091f2e
  --color=hl+:#edb443
  --color=info:#195466
  --color=prompt:#33859E
  --color=pointer:#888ca6
  --color=marker:#2aa889
  --color=spinner:#c23127
'

source $HOME/dippindots/tools/fzftab
source ~/.shell_functions

# zoxide
eval "$(zoxide init zsh)"

