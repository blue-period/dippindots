#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="$SCRIPT_DIR/installs/macOS"

source "$INSTALL_DIR/bat"
source "$INSTALL_DIR/fd"
source "$INSTALL_DIR/fzf"
source "$INSTALL_DIR/fzftab"
source "$INSTALL_DIR/ripgrep"
source "$INSTALL_DIR/zoxide"
