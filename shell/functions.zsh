mkcd() {
  mkdir -p "$1" && cd "$1"
}

take() {
  mkdir -p "$1"
  cd "$1" || return
}

groot() {
  cd "$(git rev-parse --show-toplevel)" || return
}

cdf() {
  cd "$(find . -type d | fzf)" || return
}

aliaslist() {
  bat --style=plain ~/.config/zsh/aliases.zsh 2>/dev/null || cat ~/.config/zsh/aliases.zsh
}
