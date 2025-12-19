local M = {}

---@param c OrngPalette
---@param opts table
---@return table<string, vim.api.keyset.highlight>
function M.get(c, opts)
  local bg_dark = opts.transparent and "NONE" or c.bg_dark

  return {
    -- Neogit
    NeogitBranch = { fg = c.accent, bold = true },
    NeogitRemote = { fg = c.info },
    NeogitHunkHeader = { fg = c.fg, bg = c.bg_highlight },
    NeogitHunkHeaderHighlight = { fg = c.accent, bg = c.bg_visual },
    NeogitDiffContext = { fg = c.fg, bg = bg_dark },
    NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg_highlight },
    NeogitDiffAdd = { fg = c.git_add, bg = c.diff_add },
    NeogitDiffAddHighlight = { fg = c.git_add, bg = c.diff_add },
    NeogitDiffDelete = { fg = c.git_delete, bg = c.diff_delete },
    NeogitDiffDeleteHighlight = { fg = c.git_delete, bg = c.diff_delete },
    NeogitNotificationInfo = { fg = c.info },
    NeogitNotificationWarning = { fg = c.warning },
    NeogitNotificationError = { fg = c.error },
    NeogitCommitViewHeader = { fg = c.accent, bg = c.bg_highlight },
    NeogitFilePath = { fg = c.string },
    NeogitSectionHeader = { fg = c.accent, bold = true },
    NeogitUnstagedChanges = { fg = c.warning },
    NeogitStagedChanges = { fg = c.success },
    NeogitStash = { fg = c.info },
    NeogitRecentCommits = { fg = c.fg_muted },
    NeogitCursorLine = { bg = c.bg_visual },
    NeogitFold = { fg = c.fg_muted },

    -- Diffview
    DiffviewFilePanelTitle = { fg = c.accent, bold = true },
    DiffviewFilePanelCounter = { fg = c.fg_muted },
    DiffviewFilePanelFileName = { fg = c.fg },
    DiffviewFilePanelPath = { fg = c.fg_muted },
    DiffviewFilePanelInsertions = { fg = c.git_add },
    DiffviewFilePanelDeletions = { fg = c.git_delete },
    DiffviewFilePanelRootPath = { fg = c.accent },
    DiffviewFilePanelConflicts = { fg = c.warning },
    DiffviewFolderSign = { fg = c.accent },
    DiffviewFolderName = { fg = c.fg },
    DiffviewNormal = { fg = c.fg, bg = bg_dark },
    DiffviewStatusAdded = { fg = c.git_add },
    DiffviewStatusModified = { fg = c.git_change },
    DiffviewStatusDeleted = { fg = c.git_delete },
    DiffviewStatusRenamed = { fg = c.info },
    DiffviewStatusCopied = { fg = c.info },
    DiffviewStatusTypeChanged = { fg = c.warning },
    DiffviewStatusUnmerged = { fg = c.error },
    DiffviewStatusUntracked = { fg = c.fg_muted },
    DiffviewStatusIgnored = { fg = c.fg_dark },
    DiffviewDimText = { fg = c.fg_dark },
    DiffviewPrimary = { fg = c.accent },
    DiffviewSecondary = { fg = c.info },
    DiffviewReference = { fg = c.func },
  }
end

return M
