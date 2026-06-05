alias v="nvim"
alias cat='bat --style=plain'
#Also infers vi keybindings from setting the EDITOR to nvim
export EDITOR="nvim -u $HOME/.config/nvim/minimal.lua"
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"
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

# -------------------------------------------
# 1. Edit Command Buffer
# -------------------------------------------
# Open the current command in your $EDITOR (e.g., neovim)
# Press Esc followed by e (or Alt+e) to trigger
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^[e' edit-command-line

# -------------------------------------------
# 2. Undo in ZSH
# -------------------------------------------
# Press Ctrl+_ (Ctrl+Underscore) to undo
# This is built-in, no configuration needed!
# Redo widget exists but has no default binding:
#bindkey '^Y' redo  # Example binding if you want it

source $HOME/dippindots/tools/fzftab

# zoxide
eval "$(zoxide init zsh)"
#exec zsh -l 
