# Upgrading

## Full system upgrade (all at once)

```bash
~/code/new-macbook-dev-setup/upgrade.sh
```

## Manual steps

### Upgrade Homebrew packages

```bash
brew update
brew upgrade
brew cleanup
```

### Upgrade mise runtimes

```bash
mise upgrade
```

### Upgrade pipx tools

```bash
pipx upgrade-all
```

### Validate environment

```bash
~/code/new-macbook-dev-setup/check.sh
```

### Update Brewfile after changes

```bash
brew bundle dump --file=~/code/new-macbook-dev-setup/Brewfile --force
git add Brewfile
git commit -m "Update Brewfile"
```
