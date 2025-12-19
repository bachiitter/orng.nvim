local M = {}

---@param c OrngPalette
---@return table<string, vim.api.keyset.highlight>
function M.get(c)
  return {
    -- GitSigns
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },
    GitSignsAddNr = { fg = c.git_add },
    GitSignsChangeNr = { fg = c.git_change },
    GitSignsDeleteNr = { fg = c.git_delete },
    GitSignsAddLn = { bg = c.diff_add },
    GitSignsChangeLn = { bg = c.diff_change },
    GitSignsDeleteLn = { bg = c.diff_delete },
    GitSignsCurrentLineBlame = { fg = c.fg_dark, italic = true },
    GitSignsAddInline = { bg = c.diff_add },
    GitSignsChangeInline = { bg = c.diff_change },
    GitSignsDeleteInline = { bg = c.diff_delete },
    GitSignsAddPreview = { fg = c.git_add, bg = c.diff_add },
    GitSignsDeletePreview = { fg = c.git_delete, bg = c.diff_delete },
    GitSignsUntracked = { fg = c.fg_muted },
    GitSignsUntrackedNr = { fg = c.fg_muted },
    GitSignsUntrackedLn = { bg = c.bg_highlight },

    -- Vim built-in diff
    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.diff_text },
    diffAdded = { fg = c.git_add },
    diffRemoved = { fg = c.git_delete },
    diffChanged = { fg = c.git_change },
    diffFile = { fg = c.accent },
    diffNewFile = { fg = c.git_add },
    diffOldFile = { fg = c.git_delete },
    diffLine = { fg = c.fg_muted },
    diffIndexLine = { fg = c.info },

    -- Git commit messages
    gitcommitSummary = { fg = c.fg },
    gitcommitOverflow = { fg = c.warning },
    gitcommitHeader = { fg = c.accent },
    gitcommitSelectedFile = { fg = c.git_add },
    gitcommitDiscardedFile = { fg = c.git_delete },
    gitcommitUntrackedFile = { fg = c.fg_muted },
    gitcommitBranch = { fg = c.accent, bold = true },
    gitcommitSelectedType = { fg = c.git_add },
    gitcommitDiscardedType = { fg = c.git_delete },

    -- Fugitive
    fugitiveHash = { fg = c.accent },
    fugitiveHeader = { fg = c.accent, bold = true },
    fugitiveHeading = { fg = c.accent, bold = true },
    fugitiveSymbolicRef = { fg = c.info },
    fugitiveStagedHeading = { fg = c.git_add, bold = true },
    fugitiveUnstagedHeading = { fg = c.warning, bold = true },
    fugitiveUntrackedHeading = { fg = c.fg_muted, bold = true },
    fugitiveStagedModifier = { fg = c.git_add },
    fugitiveUnstagedModifier = { fg = c.warning },
    fugitiveUntrackedModifier = { fg = c.fg_muted },
  }
end

return M
