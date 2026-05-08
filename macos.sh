#!/usr/bin/env bash
set -euo pipefail

echo "==> Applying macOS preferences"

defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

defaults write com.apple.dock autohide -bool true

killall Finder || true
killall Dock || true

echo "macOS preferences applied."
