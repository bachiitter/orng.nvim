local M = {}

---@param c table color palette
---@return table
function M.get(c)
  return {
    -- LSP Semantic Tokens
    ["@lsp.type.class"] = { fg = c.type },
    ["@lsp.type.decorator"] = { fg = c.attribute },
    ["@lsp.type.enum"] = { fg = c.enum },
    ["@lsp.type.enumMember"] = { fg = c.constant },
    ["@lsp.type.function"] = { fg = c.func },
    ["@lsp.type.interface"] = { fg = c.type },
    ["@lsp.type.keyword"] = { fg = c.keyword },
    ["@lsp.type.macro"] = { fg = c.constant },
    ["@lsp.type.method"] = { fg = c.func },
    ["@lsp.type.namespace"] = { fg = c.fg },
    ["@lsp.type.parameter"] = { fg = c.variable },
    ["@lsp.type.property"] = { fg = c.property },
    ["@lsp.type.struct"] = { fg = c.type },
    ["@lsp.type.type"] = { fg = c.type },
    ["@lsp.type.typeParameter"] = { fg = c.type },
    ["@lsp.type.variable"] = { fg = c.variable },

    -- Diagnostics
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = true },
    DiagnosticVirtualTextError = { fg = c.error, bg = c.bg_highlight },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.bg_highlight },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = c.bg_highlight },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = c.bg_highlight },
  }
end

return M
