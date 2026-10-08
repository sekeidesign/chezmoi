#!/bin/bash
# Installs tools that ship their own installers (not in Homebrew).
set -euo pipefail

# Vite+ (vp): also manages Node.js. NO_MODIFY_PATH: chezmoi owns .zshrc/.zshenv.
if [ ! -x "$HOME/.local/share/vite-plus/bin/vp" ]; then
  curl -fsSL https://vite.plus | VP_SELF_SETUP_NO_MODIFY_PATH=1 bash
fi

# Claude Code (native install, independent of Node)
if [ ! -x "$HOME/.local/bin/claude" ]; then
  curl -fsSL https://claude.ai/install.sh | bash
fi
