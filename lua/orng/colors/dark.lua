local M = {}

M.dark = {
  -- Base
  bg = "#161a22",
  bg_dark = "#10131a",
  bg_highlight = "#1e232b",
  bg_visual = "#2d343f",
  fg = "#eeeeee",
  fg_muted = "#808080",
  fg_dark = "#606060",
  border = "#3c3c3c",

  -- Accent
  accent = "#EC5B2B",
  accent_alt = "#EE7948",

  -- Syntax
  keyword = "#EC5B2B",
  func = "#EE7948",
  string = "#6ba1e6",
  number = "#FFF7F1",
  boolean = "#FFF7F1",
  constant = "#FFF7F1",
  variable = "#e06c75",
  variable_special = "#EE7948",
  type = "#e5c07b",
  property = "#679cd9",
  operator = "#56b6c2",
  comment = "#808080",
  tag = "#EC5B2B",
  attribute = "#EE7948",
  enum = "#e06c75",

  -- Diagnostic
  error = "#e06c75",
  warning = "#EC5B2B",
  info = "#56b6c2",
  hint = "#808080",
  success = "#7fd88f",

  -- Git
  git_add = "#6ba1e6",
  git_change = "#e5c07b",
  git_delete = "#e06c75",

  -- Diff backgrounds
  diff_add = "#1a3d2e",
  diff_change = "#2a2a1a",
  diff_delete = "#3d1a1a",
  diff_text = "#3a3a2a",

  -- Terminal
  term_black = "#161a22",
  term_red = "#e06c75",
  term_green = "#7fd88f",
  term_yellow = "#e5c07b",
  term_blue = "#56b6c2",
  term_magenta = "#EE7948",
  term_cyan = "#56b6c2",
  term_white = "#eeeeee",
}

return M
