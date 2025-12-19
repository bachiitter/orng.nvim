# orng.nvim tmux theme (light)
# https://github.com/bachiitter/orng.nvim
#
# Usage: source-file /path/to/orng.nvim/extras/tmux/orng-light.tmux

# ═══════════════════════════════════════════════════════════════════════════════
# Status Bar
# ═══════════════════════════════════════════════════════════════════════════════

set -g status on
set -g status-interval 5
set -g status-position bottom
set -g status-justify left
set -g status-style "bg=#FFF7F1,fg=#1a1a1a"

# Left: Session
set -g status-left-length 40
set -g status-left "#[bg=#EC5B2B,fg=#ffffff,bold] 󰊠 #S #[fg=#EC5B2B,bg=#FFF7F1]"

# Right: Date and Time
set -g status-right-length 100
set -g status-right "#[fg=#f5f0eb]#[bg=#f5f0eb,fg=#8a8a8a]  %Y-%m-%d #[fg=#EC5B2B]#[bg=#EC5B2B,fg=#ffffff,bold]  %H:%M "

# ═══════════════════════════════════════════════════════════════════════════════
# Window Status
# ═══════════════════════════════════════════════════════════════════════════════

set -g window-status-format "#[fg=#FFF7F1,bg=#f5f0eb]#[fg=#8a8a8a,bg=#f5f0eb] #I  #W #[fg=#f5f0eb,bg=#FFF7F1]"
set -g window-status-current-format "#[fg=#FFF7F1,bg=#f5f0eb]#[fg=#EC5B2B,bg=#f5f0eb,bold] #I  #W #[fg=#f5f0eb,bg=#FFF7F1]"
set -g window-status-separator ""
set -g window-status-activity-style "bg=#f5f0eb,fg=#EC5B2B"
set -g window-status-bell-style "bg=#d1383d,fg=#ffffff,bold"

# ═══════════════════════════════════════════════════════════════════════════════
# Panes
# ═══════════════════════════════════════════════════════════════════════════════

set -g pane-border-style "fg=#d4d4d4"
set -g pane-active-border-style "fg=#EC5B2B"
set -g display-panes-active-colour "#EC5B2B"
set -g display-panes-colour "#8a8a8a"

# ═══════════════════════════════════════════════════════════════════════════════
# Messages
# ═══════════════════════════════════════════════════════════════════════════════

set -g message-style "bg=#f5f0eb,fg=#1a1a1a"
set -g message-command-style "bg=#f5f0eb,fg=#EC5B2B"

# ═══════════════════════════════════════════════════════════════════════════════
# Mode
# ═══════════════════════════════════════════════════════════════════════════════

set -g mode-style "bg=#e1e1e1,fg=#1a1a1a"

# ═══════════════════════════════════════════════════════════════════════════════
# Clock
# ═══════════════════════════════════════════════════════════════════════════════

set -g clock-mode-colour "#EC5B2B"
set -g clock-mode-style 24
