local M = {}

local palettes = {
  dark = require('orng.palettes.dark').dark,
  light = require('orng.palettes.light').light,
}

---@param style? 'dark'|'light'
---@return table
function M.get(style)
  local palette = palettes[style or 'dark']
  if palette then
    return vim.deepcopy(palette)
  end

  return vim.deepcopy(palettes.dark)
end

return M
