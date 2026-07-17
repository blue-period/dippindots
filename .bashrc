alias v="nvim"
alias cat='bat --style=plain'
#Also infers vi keybindings from setting the EDITOR to nvim
export EDITOR="nvim -u $HOME/.config/nvim/minimal.lua"
export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"
export KEYTIMEOUT=10
export PATH=$PATH:$HOME/.local/bin

source ~/.shell_functions


#Install fzf
#git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install

# FZF open with ctr f
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fzf --bash)"
bind -r '"\C-t"'
bind -x '"\C-f": fzf-file-widget'

# -------------------------------------------
# 1. Edit Command Buffer
# -------------------------------------------
# Open the current command in your $EDITOR (e.g., neovim)
# Press Esc followed by e (or Alt+e) to trigger
# Edit the current command line in your editor, then return to the prompt
edit_command_line() {
    local tmp
    tmp=$(mktemp) || return

    printf '%s' "$READLINE_LINE" > "$tmp"

    # If EDITOR contains arguments, this handles them correctly.
    eval "${EDITOR:-nvim}" "\"$tmp\""

    READLINE_LINE=$(<"$tmp")
    READLINE_POINT=${#READLINE_LINE}

    rm -f "$tmp"
}

# Bind Ctrl-E to edit the current command line
bind -x '"\C-e": edit_command_line'



# zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init bash)"
fi
