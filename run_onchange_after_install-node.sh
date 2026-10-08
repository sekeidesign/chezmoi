#!/bin/bash
# Installs nvm + Node on a fresh machine. Bump NODE_VERSION to change the default.
set -euo pipefail
NODE_VERSION=24

export NVM_DIR="$HOME/.nvm"
if [ ! -s "$NVM_DIR/nvm.sh" ]; then
  # PROFILE=/dev/null: don't let the installer edit .zshrc (oh-my-zsh's nvm plugin loads it)
  curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/HEAD/install.sh | PROFILE=/dev/null bash
fi
set +u; . "$NVM_DIR/nvm.sh"
nvm install "$NODE_VERSION"
nvm alias default "$NODE_VERSION"
