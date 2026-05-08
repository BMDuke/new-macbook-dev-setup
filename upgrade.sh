#!/usr/bin/env bash
set -euo pipefail

echo "==> Updating Homebrew"
brew update

echo "==> Upgrading packages"
brew upgrade

echo "==> Cleaning old packages"
brew cleanup

echo "==> Upgrading mise runtimes"
mise upgrade || true

echo "==> Upgrading pipx packages"
pipx upgrade-all || true

echo "==> Running checks"
"$HOME/code/new-macbook-dev-setup/check.sh"

echo "Upgrade complete."
