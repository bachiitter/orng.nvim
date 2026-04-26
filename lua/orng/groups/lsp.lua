local M = {}

---@param hex string hex color e.g. "#rrggbb"
---@return number, number, number
local function hexToRGB(hex)
  hex = hex:gsub('#', '')
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

---@param fg string foreground hex color
---@param bg string background hex color
---@param alpha number 0.0–1.0
---@return string blended hex color
local function blend(fg, bg, alpha)
  local fr, fg_, fb = hexToRGB(fg)
  local br, bg_, bb = hexToRGB(bg)
  local r = math.floor(alpha * fr + (1 - alpha) * br + 0.5)
  local g = math.floor(alpha * fg_ + (1 - alpha) * bg_ + 0.5)
  local b = math.floor(alpha * fb + (1 - alpha) * bb + 0.5)
  return string.format('#%02x%02x%02x', r, g, b)
end

---@return boolean
local function hasAdvancedSemanticTokenSupport()
  return vim.fn.has('nvim-0.11') == 1
end

---@param c table color palette
---@return table
function M.get(c)
  local highlights = {
    -- Keep semantic token colors aligned with treesitter groups to reduce
    -- the recolor flicker that can happen right after LSP attaches.
    ['@lsp.type.boolean'] = { link = '@boolean' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.decorator'] = { link = '@attribute' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ['@lsp.type.macro'] = { link = '@function.macro' },
    ['@lsp.type.method'] = { link = '@function.method' },
    ['@lsp.type.namespace'] = { link = '@module' },
    ['@lsp.type.number'] = { link = '@number' },
    ['@lsp.type.operator'] = { link = '@operator' },
    ['@lsp.type.parameter'] = { link = '@variable.parameter' },
    ['@lsp.type.property'] = { link = '@variable.member' },
    ['@lsp.type.string'] = { link = '@string' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.variable'] = {},

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
    DiagnosticUnnecessary = { fg = blend(c.fg, c.bg, 0.75), underline = false, undercurl = false },
  }

  if not hasAdvancedSemanticTokenSupport() then
    return highlights
  end

  return vim.tbl_deep_extend('force', highlights, {
    ['@lsp.type.builtinType'] = { link = '@type.builtin' },
    ['@lsp.type.deriveHelper'] = { link = '@attribute' },
    ['@lsp.type.enumMember'] = { link = '@constant' },
    ['@lsp.type.escapeSequence'] = { link = '@string.escape' },
    ['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' },
    ['@lsp.type.selfKeyword'] = { link = '@variable.builtin' },
    ['@lsp.type.selfTypeKeyword'] = { link = '@variable.builtin' },
    ['@lsp.type.typeParameter'] = { link = '@type.definition' },
    ['@lsp.type.unresolvedReference'] = { sp = c.error, undercurl = true },
    ['@lsp.typemod.class.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.typemod.enum.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.typemod.enumMember.defaultLibrary'] = { link = '@constant.builtin' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.keyword.async'] = { link = '@keyword' },
    ['@lsp.typemod.macro.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.operator.injected'] = { link = '@operator' },
    ['@lsp.typemod.string.injected'] = { link = '@string' },
    ['@lsp.typemod.type.defaultLibrary'] = { link = '@type.builtin' },
    ['@lsp.typemod.typeAlias.defaultLibrary'] = { link = '@type.definition' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
    ['@lsp.typemod.variable.injected'] = { link = '@variable' },
    ['@lsp.typemod.variable.static'] = { link = '@constant' },
  })
end

return M
