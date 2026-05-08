# Manual steps after bootstrap

These require interactive login and cannot be automated.

## Auth & Identity

- `gh auth login` — authenticate GitHub CLI
- Generate SSH keys: `ssh-keygen -t ed25519 -C "your-email"`
- Add SSH public key to GitHub
- `tailscale up` — login to Tailscale

## Apps to open once (for first-run setup)

- Open OrbStack: `open -a OrbStack`
- Open Ghostty: `open -a Ghostty`
- Open Warp: `open -a Warp`
- Open VS Code: `open -a "Visual Studio Code"`

## VS Code CLI

In VS Code:
- `Cmd + Shift + P`
- Run: `Shell Command: Install 'code' command in PATH`

## Work-specific

- Login to work SSO / VPN
- Configure work kubeconfig: `aws eks update-kubeconfig ...` or equivalent
- Any work-specific credentials or tool auth
