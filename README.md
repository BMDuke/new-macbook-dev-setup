# new-macbook-dev-setup

Reproducible Mac development environment. Clone and run one script to get ~90% configured.

## Quick start

```bash
git clone <your-repo-url> ~/code/new-macbook-dev-setup
cd ~/code/new-macbook-dev-setup
./install.sh
```

Then follow `docs/manual-steps.md` for auth and identity steps.

## What this does

1. Installs all Homebrew packages and casks from `Brewfile`
2. Symlinks dotfiles (shell, git, mise, ghostty, vscode)
3. Installs mise-managed runtimes (Node, Python, Go)
4. Validates the environment

## Repo structure

```
new-macbook-dev-setup/
├── Brewfile               # all packages + casks
├── install.sh             # main bootstrap (run this on a new machine)
├── relink.sh              # recreate symlinks (safe to rerun)
├── check.sh               # validate tools are installed
├── undo.sh                # remove symlinks (backs up real files)
├── upgrade.sh             # upgrade all packages and runtimes
├── macos.sh               # apply macOS system preferences
├── shell/
│   ├── zshrc              # → ~/.zshrc
│   ├── aliases.zsh        # → ~/.config/zsh/aliases.zsh
│   └── functions.zsh      # → ~/.config/zsh/functions.zsh
├── git/
│   ├── gitconfig          # → ~/.gitconfig
│   └── gitignore_global   # → ~/.gitignore_global
├── mise/
│   └── config.toml        # → ~/.config/mise/config.toml
├── ghostty/
│   └── config             # → ~/.config/ghostty/config
├── vscode/
│   ├── settings.json      # → ~/Library/.../Code/User/settings.json
│   └── extensions.txt     # reinstall with: xargs -L1 code --install-extension
├── ssh/
│   └── config.example     # template only — never commit real ssh config
└── docs/
    ├── manual-steps.md
    ├── new-machine-checklist.md
    ├── update-workflow.md
    └── upgrading.md
```

## Operational rules

1. **Never edit live config directly** — edit files in this repo, then `./relink.sh`
2. **Every brew install gets committed** — `brew bundle dump --force`, then commit
3. **Secrets never go in the repo** — use templates and `docs/manual-steps.md`
4. **Scripts are always safe to rerun** — idempotent by design
