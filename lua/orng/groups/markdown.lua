local M = {}

---@param c OrngPalette
---@return table<string, vim.api.keyset.highlight>
function M.get(c)
  return {
    -- render-markdown.nvim
    RenderMarkdownH1 = { fg = c.accent, bold = true },
    RenderMarkdownH1Bg = { bg = c.bg_highlight },
    RenderMarkdownH2 = { fg = c.func, bold = true },
    RenderMarkdownH2Bg = { bg = c.bg_highlight },
    RenderMarkdownH3 = { fg = c.info, bold = true },
    RenderMarkdownH3Bg = { bg = c.bg_highlight },
    RenderMarkdownH4 = { fg = c.success, bold = true },
    RenderMarkdownH4Bg = { bg = c.bg_highlight },
    RenderMarkdownH5 = { fg = c.warning, bold = true },
    RenderMarkdownH5Bg = { bg = c.bg_highlight },
    RenderMarkdownH6 = { fg = c.fg_muted, bold = true },
    RenderMarkdownH6Bg = { bg = c.bg_highlight },

    RenderMarkdownCode = { bg = c.bg_dark },
    RenderMarkdownCodeInline = { bg = c.bg_highlight },
    RenderMarkdownBullet = { fg = c.accent },
    RenderMarkdownQuote = { fg = c.fg_muted, italic = true },
    RenderMarkdownDash = { fg = c.border },
    RenderMarkdownLink = { fg = c.info, underline = true },
    RenderMarkdownWikiLink = { fg = c.info },
    RenderMarkdownTableHead = { fg = c.accent },
    RenderMarkdownTableRow = { fg = c.fg },
    RenderMarkdownTableFill = { fg = c.border },
    RenderMarkdownSuccess = { fg = c.success },
    RenderMarkdownInfo = { fg = c.info },
    RenderMarkdownHint = { fg = c.hint },
    RenderMarkdownWarn = { fg = c.warning },
    RenderMarkdownError = { fg = c.error },

    -- Checkbox states
    RenderMarkdownUnchecked = { fg = c.fg_muted },
    RenderMarkdownChecked = { fg = c.success },
    RenderMarkdownTodo = { fg = c.warning },

    -- Callouts
    RenderMarkdownNote = { fg = c.info },
    RenderMarkdownTip = { fg = c.success },
    RenderMarkdownImportant = { fg = c.accent },
    RenderMarkdownWarning = { fg = c.warning },
    RenderMarkdownCaution = { fg = c.error },
  }
end

return M
