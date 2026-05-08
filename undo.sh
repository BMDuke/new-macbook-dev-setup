#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="$HOME/dotfiles-backup/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BACKUP_DIR"

backup_and_remove_if_symlink() {
  local target="$1"

  if [ -L "$target" ]; then
    rm "$target"
  elif [ -e "$target" ]; then
    mkdir -p "$BACKUP_DIR$(dirname "$target")"
    mv "$target" "$BACKUP_DIR$target"
  fi
}

backup_and_remove_if_symlink "$HOME/.zshrc"
backup_and_remove_if_symlink "$HOME/.gitconfig"
backup_and_remove_if_symlink "$HOME/.gitignore_global"

backup_and_remove_if_symlink "$HOME/.config/zsh/aliases.zsh"
backup_and_remove_if_symlink "$HOME/.config/zsh/functions.zsh"

backup_and_remove_if_symlink "$HOME/.config/mise/config.toml"
backup_and_remove_if_symlink "$HOME/.config/ghostty/config"

echo "Undo complete. Backups (if any) saved to: $BACKUP_DIR"
