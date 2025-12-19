local M = {}

---@param c table color palette
---@return table
function M.get(c)
  return {
    BufferLineFill = { bg = c.bg_dark },
    BufferLineBackground = { fg = c.fg_muted, bg = c.bg_dark },
    BufferLineBuffer = { fg = c.fg_muted, bg = c.bg_dark },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg, bold = true },
    BufferLineBufferVisible = { fg = c.fg_muted, bg = c.bg_highlight },
    BufferLineCloseButton = { fg = c.fg_muted, bg = c.bg_dark },
    BufferLineCloseButtonSelected = { fg = c.error, bg = c.bg },
    BufferLineCloseButtonVisible = { fg = c.fg_muted, bg = c.bg_highlight },
    BufferLineTab = { fg = c.fg_muted, bg = c.bg_dark },
    BufferLineTabSelected = { fg = c.bg, bg = c.accent, bold = true },
    BufferLineTabClose = { fg = c.error, bg = c.bg_dark },
    BufferLineSeparator = { fg = c.bg_dark, bg = c.bg_dark },
    BufferLineSeparatorSelected = { fg = c.bg_dark, bg = c.bg },
    BufferLineSeparatorVisible = { fg = c.bg_dark, bg = c.bg_highlight },
    BufferLineIndicatorSelected = { fg = c.accent, bg = c.bg },
    BufferLineIndicatorVisible = { fg = c.bg_highlight, bg = c.bg_highlight },
    BufferLineModified = { fg = c.git_change, bg = c.bg_dark },
    BufferLineModifiedSelected = { fg = c.git_change, bg = c.bg },
    BufferLineModifiedVisible = { fg = c.git_change, bg = c.bg_highlight },
    BufferLineDuplicate = { fg = c.fg_dark, bg = c.bg_dark, italic = true },
    BufferLineDuplicateSelected = { fg = c.fg_muted, bg = c.bg, italic = true },
    BufferLineDuplicateVisible = { fg = c.fg_dark, bg = c.bg_highlight, italic = true },
    BufferLineError = { fg = c.error, bg = c.bg_dark },
    BufferLineErrorSelected = { fg = c.error, bg = c.bg },
    BufferLineWarning = { fg = c.warning, bg = c.bg_dark },
    BufferLineWarningSelected = { fg = c.warning, bg = c.bg },
    BufferLineInfo = { fg = c.info, bg = c.bg_dark },
    BufferLineInfoSelected = { fg = c.info, bg = c.bg },
    BufferLineHint = { fg = c.hint, bg = c.bg_dark },
    BufferLineHintSelected = { fg = c.hint, bg = c.bg },
    BufferLineNumbers = { fg = c.fg_muted, bg = c.bg_dark },
    BufferLineNumbersSelected = { fg = c.fg, bg = c.bg },
    BufferLinePick = { fg = c.accent, bg = c.bg_dark, bold = true },
    BufferLinePickSelected = { fg = c.accent, bg = c.bg, bold = true },
    BufferLineOffsetSeparator = { fg = c.border, bg = c.bg_dark },
  }
end

return M
