#!/usr/bin/env bash
set -euo pipefail

missing=0

check() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "MISSING: $1"
    missing=1
  else
    echo "OK:      $1"
  fi
}

check brew
check git
check gh
check starship
check rg
check fd
check bat
check eza
check fzf
check jq
check yq
check lazygit
check docker
check kubectl
check helm
check terraform
check tofu

if [ "$missing" -eq 1 ]; then
  echo
  echo "Some tools are missing. Run: brew bundle --file=Brewfile"
  exit 1
fi

echo
echo "All checks passed."
