local M = {}

---@param c OrngPalette
---@return table<string, vim.api.keyset.highlight>
function M.get(c)
  return {
    -- Breakpoints
    DapBreakpoint = { fg = c.error },
    DapBreakpointCondition = { fg = c.warning },
    DapBreakpointRejected = { fg = c.fg_muted },
    DapLogPoint = { fg = c.info },
    DapStopped = { fg = c.success },

    -- DAP UI
    DapUIScope = { fg = c.accent },
    DapUIType = { fg = c.type },
    DapUIValue = { fg = c.fg },
    DapUIModifiedValue = { fg = c.accent, bold = true },
    DapUIDecoration = { fg = c.accent },
    DapUIThread = { fg = c.success },
    DapUIStoppedThread = { fg = c.accent },
    DapUIFrameName = { fg = c.fg },
    DapUISource = { fg = c.string },
    DapUILineNumber = { fg = c.fg_muted },
    DapUIFloatBorder = { fg = c.border },
    DapUIWatchesEmpty = { fg = c.fg_muted },
    DapUIWatchesValue = { fg = c.success },
    DapUIWatchesError = { fg = c.error },
    DapUIBreakpointsPath = { fg = c.info },
    DapUIBreakpointsInfo = { fg = c.success },
    DapUIBreakpointsCurrentLine = { fg = c.accent, bold = true },
    DapUIBreakpointsLine = { link = "DapUILineNumber" },
    DapUIBreakpointsDisabledLine = { fg = c.fg_dark },
    DapUICurrentFrameName = { link = "DapUIBreakpointsCurrentLine" },
    DapUIStepOver = { fg = c.info },
    DapUIStepInto = { fg = c.info },
    DapUIStepBack = { fg = c.info },
    DapUIStepOut = { fg = c.info },
    DapUIStop = { fg = c.error },
    DapUIPlayPause = { fg = c.success },
    DapUIRestart = { fg = c.success },
    DapUIUnavailable = { fg = c.fg_dark },
    DapUIWinSelect = { fg = c.accent, bold = true },

    -- Virtual text
    NvimDapVirtualText = { fg = c.fg_muted, italic = true },
    NvimDapVirtualTextChanged = { fg = c.warning, italic = true },
    NvimDapVirtualTextError = { fg = c.error, italic = true },
    NvimDapVirtualTextInfo = { fg = c.info, italic = true },
  }
end

return M
