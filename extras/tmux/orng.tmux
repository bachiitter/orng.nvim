# orng.nvim tmux theme (dark)
# https://github.com/bachiitter/orng.nvim
#
# Usage: source-file /path/to/orng.nvim/extras/tmux/orng.tmux

# ═══════════════════════════════════════════════════════════════════════════════
# Status Bar
# ═══════════════════════════════════════════════════════════════════════════════

set -g status on
set -g status-interval 5
set -g status-position bottom
set -g status-justify left
set -g status-style "bg=#10131a,fg=#eeeeee"

# Left: Session
set -g status-left-length 40
set -g status-left "#[bg=#EC5B2B,fg=#ffffff,bold] 󰊠 #S #[fg=#EC5B2B,bg=#10131a]"

# Right: Date and Time
set -g status-right-length 100
set -g status-right "#[fg=#1e232b]#[bg=#1e232b,fg=#808080]  %Y-%m-%d #[fg=#EC5B2B]#[bg=#EC5B2B,fg=#ffffff,bold]  %H:%M "

# ═══════════════════════════════════════════════════════════════════════════════
# Window Status
# ═══════════════════════════════════════════════════════════════════════════════

set -g window-status-format "#[fg=#10131a,bg=#1e232b]#[fg=#808080,bg=#1e232b] #I  #W #[fg=#1e232b,bg=#10131a]"
set -g window-status-current-format "#[fg=#10131a,bg=#1e232b]#[fg=#EC5B2B,bg=#1e232b,bold] #I  #W #[fg=#1e232b,bg=#10131a]"
set -g window-status-separator ""
set -g window-status-activity-style "bg=#1e232b,fg=#EC5B2B"
set -g window-status-bell-style "bg=#e06c75,fg=#161a22,bold"

# ═══════════════════════════════════════════════════════════════════════════════
# Panes
# ═══════════════════════════════════════════════════════════════════════════════

set -g pane-border-style "fg=#1e232b"
set -g pane-active-border-style "fg=#EC5B2B"
set -g display-panes-active-colour "#EC5B2B"
set -g display-panes-colour "#808080"

# ═══════════════════════════════════════════════════════════════════════════════
# Messages
# ═══════════════════════════════════════════════════════════════════════════════

set -g message-style "bg=#1e232b,fg=#eeeeee"
set -g message-command-style "bg=#1e232b,fg=#EC5B2B"

# ═══════════════════════════════════════════════════════════════════════════════
# Mode
# ═══════════════════════════════════════════════════════════════════════════════

set -g mode-style "bg=#2d343f,fg=#eeeeee"

# ═══════════════════════════════════════════════════════════════════════════════
# Clock
# ═══════════════════════════════════════════════════════════════════════════════

set -g clock-mode-colour "#EC5B2B"
set -g clock-mode-style 24
