alias v="nvim"
alias cat='bat --style=plain'
export EDITOR="nvim -u $HOME/.config/nvim/minimal.lua"
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"
export KEYTIMEOUT=20

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
zvm_before_init_commands=()
source $HOME/dippindots/tools/zsh-vi-mode

# zoxide
eval "$(zoxide init zsh)"
#exec zsh -l 
