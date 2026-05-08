#!/usr/bin/env bash
set -euo pipefail

ROOT="$HOME/code/new-macbook-dev-setup"

mkdir -p ~/.config/zsh
mkdir -p ~/.config/mise
mkdir -p ~/.config/ghostty
mkdir -p ~/Library/Application\ Support/Code/User

ln -sfn "$ROOT/shell/zshrc" ~/.zshrc
ln -sfn "$ROOT/shell/aliases.zsh" ~/.config/zsh/aliases.zsh
ln -sfn "$ROOT/shell/functions.zsh" ~/.config/zsh/functions.zsh

ln -sfn "$ROOT/git/gitconfig" ~/.gitconfig
ln -sfn "$ROOT/git/gitignore_global" ~/.gitignore_global

ln -sfn "$ROOT/mise/config.toml" ~/.config/mise/config.toml
ln -sfn "$ROOT/ghostty/config" ~/.config/ghostty/config
ln -sfn "$ROOT/vscode/settings.json" ~/Library/Application\ Support/Code/User/settings.json

echo "Relink complete"
