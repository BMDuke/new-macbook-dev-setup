# safer / better defaults
alias ls='eza -lah --group-directories-first'
alias ll='eza -lh --group-directories-first'
alias la='eza -a --group-directories-first'
alias lt='eza --tree --level=2'
alias cat='bat'
alias grep='rg'
alias find='fd'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'

# git
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gst='git status -sb'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log --oneline --graph --decorate -20'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias gba='git branch -a'
alias gclean='git branch --merged | egrep -v "(^\*|main|master|develop|dev)" | xargs -n 1 git branch -d'

# lazygit / gh
alias lg='lazygit'
alias ghpr='gh pr create'
alias ghpv='gh pr view --web'

# docker / orb
alias d='docker'
alias dc='docker compose'
alias dps='docker ps'
alias di='docker images'
alias dex='docker exec -it'
alias dlog='docker logs -f'
alias dclean='docker system prune -af --volumes'
alias orbup='open -a OrbStack'

# kubernetes
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgd='kubectl get deploy'
alias kgn='kubectl get nodes'
alias kaf='kubectl apply -f'
alias kdf='kubectl delete -f'
alias kctx='kubectx'
alias kns='kubens'
alias k9='k9s'
alias kl='kubectl logs -f'
alias ke='kubectl exec -it'

# terraform / tofu
alias tf='terraform'
alias tofu='opentofu'
alias tfi='terraform init'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'

# python
alias py='python3'
alias pip='pip3'
alias venv='python3 -m venv .venv'
alias act='source .venv/bin/activate'

# tailscale
alias ts='tailscale'
alias tsup='tailscale up'
alias tsdown='tailscale down'
alias tsstatus='tailscale status'

# utilities
alias j='jq'
alias y='yq'
alias h='history'
alias p='pwd'
alias ports='lsof -i -P -n | grep LISTEN'
alias weather='curl wttr.in'

# self-help
alias al='aliaslist'
