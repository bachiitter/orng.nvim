local M = {}

M.light = {
  -- Base
  bg = "#ffffff",
  bg_dark = "#FFF7F1",
  bg_highlight = "#f5f0eb",
  bg_visual = "#e1e1e1",
  fg = "#1a1a1a",
  fg_muted = "#8a8a8a",
  fg_dark = "#a0a0a0",
  border = "#d4d4d4",

  -- Accent
  accent = "#EC5B2B",
  accent_alt = "#c94d24",

  -- Syntax
  keyword = "#EC5B2B",
  func = "#c94d24",
  string = "#0062d1",
  number = "#EC5B2B",
  boolean = "#EC5B2B",
  constant = "#EC5B2B",
  variable = "#d1383d",
  variable_special = "#c94d24",
  type = "#b0851f",
  property = "#679cd9",
  operator = "#318795",
  comment = "#8a8a8a",
  tag = "#EC5B2B",
  attribute = "#c94d24",
  enum = "#d1383d",

  -- Diagnostic
  error = "#d1383d",
  warning = "#EC5B2B",
  info = "#318795",
  hint = "#8a8a8a",
  success = "#3d9a57",

  -- Git
  git_add = "#0062d1",
  git_change = "#b0851f",
  git_delete = "#d1383d",

  -- Diff backgrounds
  diff_add = "#d4edda",
  diff_change = "#fff3cd",
  diff_delete = "#f8d7da",
  diff_text = "#ffeeba",

  -- Terminal
  term_black = "#1a1a1a",
  term_red = "#d1383d",
  term_green = "#3d9a57",
  term_yellow = "#b0851f",
  term_blue = "#318795",
  term_magenta = "#c94d24",
  term_cyan = "#318795",
  term_white = "#ffffff",
}

return M
