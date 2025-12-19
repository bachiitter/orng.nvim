local M = {}

---@param c table color palette
---@return table
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
  }
end

return M
