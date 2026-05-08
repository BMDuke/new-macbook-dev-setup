#!/usr/bin/env bash
set -euo pipefail

ROOT="$HOME/code/new-macbook-dev-setup"

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install it first:"
  echo '  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
  exit 1
fi

echo "==> Git identity"
current_name=$(git config --global user.name 2>/dev/null || true)
current_email=$(git config --global user.email 2>/dev/null || true)

read -rp "Git name [${current_name:-not set}]: " git_name
read -rp "Git email [${current_email:-not set}]: " git_email

git config --global user.name "${git_name:-$current_name}"
git config --global user.email "${git_email:-$current_email}"

echo "==> Installing brew packages"
brew bundle --file="$ROOT/Brewfile"

echo "==> Linking config"
"$ROOT/relink.sh"

echo "==> Installing mise tools"
mise install || true

echo "==> Running checks"
"$ROOT/check.sh"

echo
echo "Bootstrap complete."
echo "Read docs/manual-steps.md for next steps."
