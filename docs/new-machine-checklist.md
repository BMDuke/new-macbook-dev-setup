# New Machine Checklist

## 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After install, follow the "Next steps" output to add Homebrew to PATH.

## 2. Clone this repo

```bash
mkdir -p ~/code
git clone <your-repo-url> ~/code/new-macbook-dev-setup
cd ~/code/new-macbook-dev-setup
```

## 3. Run bootstrap

```bash
./install.sh
```

This installs all packages, links dotfiles, installs mise runtimes, and validates the environment.

## 4. Follow manual steps

```bash
cat docs/manual-steps.md
```

## 5. Validate

```bash
./check.sh
```

## 6. Optional: apply macOS preferences

```bash
./macos.sh
```
