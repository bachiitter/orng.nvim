# 🍊 orng.nvim - tmux Theme

Matching tmux themes for orng.nvim colorscheme.

## Requirements

- tmux 2.1+
- [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

## Installation

Add to your `~/.tmux.conf`:

```bash
# Dark theme
source-file /path/to/orng.nvim/extras/tmux/orng.tmux

# Or light theme
source-file /path/to/orng.nvim/extras/tmux/orng-light.tmux
```

Then reload tmux: `tmux source ~/.tmux.conf`

## Switching Themes

```bash
# In tmux command mode (prefix + :)
source-file /path/to/extras/tmux/orng.tmux
source-file /path/to/extras/tmux/orng-light.tmux
```

## Customization

Override any setting after sourcing:

```bash
source-file /path/to/orng.nvim/extras/tmux/orng.tmux

# Custom overrides
set -g status-position top
set -g status-right "#H %H:%M"
```

## Without Nerd Fonts

Replace the icons by adding after the source-file:

```bash
set -g status-left "#[bg=#EC5B2B,fg=#ffffff,bold] #S #[fg=#EC5B2B,bg=#10131a]"
```

## Colors

| Color | Dark | Light |
|-------|------|-------|
| Background | `#10131a` | `#FFF7F1` |
| Foreground | `#eeeeee` | `#1a1a1a` |
| Accent | `#EC5B2B` | `#EC5B2B` |
