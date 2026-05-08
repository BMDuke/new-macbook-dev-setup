# Update Workflow

## Installing a new package

```bash
brew install <package>
brew bundle dump --file=~/code/new-macbook-dev-setup/Brewfile --force
git add Brewfile
git commit -m "Add <package>"
```

## Updating shell config

Edit the file in the repo (not the live symlink):

```bash
code ~/code/new-macbook-dev-setup/shell/aliases.zsh
```

Then reload:

```bash
source ~/.zshrc
```

Commit:

```bash
git add shell/
git commit -m "Update shell config"
```

## Updating tool versions

Edit `mise/config.toml`, then:

```bash
mise install
git add mise/config.toml
git commit -m "Update mise tool versions"
```

## Syncing VS Code extensions

Export current extensions:

```bash
code --list-extensions > ~/code/new-macbook-dev-setup/vscode/extensions.txt
git add vscode/extensions.txt
git commit -m "Update VS Code extensions"
```

Reinstall from list on a new machine:

```bash
cat vscode/extensions.txt | xargs -L 1 code --install-extension
```
