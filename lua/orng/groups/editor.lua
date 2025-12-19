local M = {}

---@param c table color palette
---@param opts table options
---@return table
function M.get(c, opts)
  local bg = opts.transparent and "NONE" or c.bg
  local bg_dark = opts.transparent and "NONE" or c.bg_dark

  return {
    -- Editor
    Normal = { fg = c.fg, bg = bg },
    NormalFloat = { fg = c.fg, bg = c.bg_dark },
    FloatBorder = { fg = c.border, bg = c.bg_dark },
    ColorColumn = { bg = c.bg_highlight },
    Cursor = { fg = c.bg, bg = c.accent },
    CursorLine = { bg = c.bg_highlight },
    CursorLineNr = { fg = c.fg, bold = true },
    LineNr = { fg = c.fg_dark },
    SignColumn = { bg = bg },
    VertSplit = { fg = c.border },
    WinSeparator = { fg = c.border },
    Folded = { fg = c.comment, bg = c.bg_highlight },
    FoldColumn = { fg = c.comment },
    MatchParen = { fg = c.accent, bold = true },
    NonText = { fg = c.fg_dark },
    SpecialKey = { fg = c.fg_dark },
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    Whitespace = { fg = c.fg_dark },
    EndOfBuffer = { fg = c.bg_dark },

    -- Popup menu
    Pmenu = { fg = c.fg, bg = c.bg },
    PmenuSel = { fg = c.fg, bg = c.bg_visual },
    PmenuSbar = { bg = c.bg_highlight },
    PmenuThumb = { bg = c.fg_muted },

    -- Search
    Search = { fg = c.bg, bg = c.accent },
    IncSearch = { fg = c.bg, bg = c.accent_alt },
    CurSearch = { fg = c.bg, bg = c.accent_alt },
    Substitute = { fg = c.bg, bg = c.accent },

    -- Tabs
    TabLine = { fg = c.fg_muted, bg = c.bg },
    TabLineFill = { bg = c.bg },
    TabLineSel = { fg = c.fg, bg = c.bg_dark },

    -- Status line
    StatusLine = { fg = c.fg, bg = c.bg },
    StatusLineNC = { fg = c.fg_muted, bg = c.bg_dark },

    -- Messages
    ErrorMsg = { fg = c.error },
    WarningMsg = { fg = c.warning },
    ModeMsg = { fg = c.fg, bold = true },
    MoreMsg = { fg = c.info },
    Question = { fg = c.info },

    -- Diff
    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.diff_text },

    -- Spelling
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warning, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.hint, undercurl = true },
  }
end

return M
