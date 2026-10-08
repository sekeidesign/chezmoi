# dotfiles

Managed with [chezmoi](https://chezmoi.io). zsh + oh-my-zsh + powerlevel10k, Ghostty.

## New machine

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <github-username>
```

That installs Homebrew + everything in `Brewfile`, pulls oh-my-zsh/p10k/plugins, and writes all dotfiles.

## Day to day

| Task | Command |
|---|---|
| Edit a managed file | `chezmoi edit ~/.zshrc` (then `chezmoi apply`) |
| Start tracking a file | `chezmoi add ~/.something` |
| Pull a changed file back in | `chezmoi re-add` |
| Install a new app everywhere | add to `Brewfile`, `chezmoi apply` |
| Push changes | `chezmoi cd && git add -A && git commit -m ... && git push` |
| Pull on another machine | `chezmoi update` |

Machine-only / secret stuff goes in `~/.zshrc.local` (not synced).
