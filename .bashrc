# ~/.bashrc: bash equivalent of this repo's .zshrc

# If not running interactively, do not do anything.
case $- in
  *i*) ;;
  *) return ;;
esac

alias v="nvim"
alias cat='bat --style=plain'

# Also sets the editor used by Readline's edit-and-execute-command.
export EDITOR="nvim -u $HOME/.config/nvim/minimal.lua"
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"

# Zsh's KEYTIMEOUT is roughly analogous to Bash Readline's keyseq timeout.
bind 'set keyseq-timeout 10'

# -------------------------------------------
# 1. Edit Command Buffer
# -------------------------------------------
# Open the current command in your $EDITOR.
# Press Esc followed by e (or Alt+e) to trigger.
bind '"\ee": edit-and-execute-command'

# -------------------------------------------
# 2. Undo in Bash
# -------------------------------------------
# Press Ctrl+_ (Ctrl+Underscore) to undo.
# This is built into Readline, no configuration needed.

# fzf
# The repo's tools/fzftab file is zsh-only, so use fzf's bash integration here.
if command -v fzf >/dev/null 2>&1; then
  source <(fzf --bash)

  # Match the zsh config's custom fuzzy file picker binding.
  bind -x '"\eg": fzf-file-widget'

  # Remove the default Ctrl-T fzf binding, matching the zsh config.
  bind -r '"\C-t"' 2>/dev/null || true
fi

# zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init bash)"
fi
