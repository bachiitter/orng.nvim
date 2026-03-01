local M = {}

---@class OrngConfig
---@field style? 'dark'|'light'
---@field transparent? boolean
---@field integrations? { lualine?: boolean }
---@field colors? table<string, string>
---@field highlights? table<string, vim.api.keyset.highlight>

---@type OrngConfig
M.config = {
  style = 'dark',
  transparent = false,
  integrations = {
    lualine = false,
  },
  colors = {},
  highlights = {},
}

M.state = {
  style = 'dark',
}

---@param base table
---@param overrides? table
---@return table
local function mergeTables(base, overrides)
  return vim.tbl_deep_extend('force', vim.deepcopy(base), overrides or {})
end

---@param style? 'dark'|'light'
---@param overrides? table<string, string>
---@return table
function M.colors(style, overrides)
  local palette = require('orng.palette').get(style or M.config.style)
  if not overrides or not next(overrides) then
    return palette
  end

  return vim.tbl_deep_extend('force', palette, overrides)
end

---@param style? 'dark'|'light'
---@return table
function M.lualine(style)
  local c = M.colors(style)
  return {
    normal = {
      a = { bg = c.accent, fg = c.bg, gui = 'bold' },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    insert = {
      a = { bg = c.success, fg = c.bg, gui = 'bold' },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    visual = {
      a = { bg = c.info, fg = c.bg, gui = 'bold' },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    replace = {
      a = { bg = c.error, fg = c.bg, gui = 'bold' },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    command = {
      a = { bg = c.warning, fg = c.bg, gui = 'bold' },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    inactive = {
      a = { bg = c.bg_dark, fg = c.fg_muted },
      b = { bg = c.bg_dark, fg = c.fg_dark },
      c = { bg = c.bg_dark, fg = c.fg_dark },
    },
  }
end

---@param style 'dark'|'light'
---@return string
local function getColorschemeName(style)
  if style == 'light' then
    return 'orng-light'
  end

  return 'orng'
end

---@param c table
local function setTerminalColors(c)
  local terminalColors = {
    c.term_black,
    c.term_red,
    c.term_green,
    c.term_yellow,
    c.term_blue,
    c.term_magenta,
    c.term_cyan,
    c.term_white,
    c.term_bright_black,
    c.term_bright_red,
    c.term_bright_green,
    c.term_bright_yellow,
    c.term_bright_blue,
    c.term_bright_magenta,
    c.term_bright_cyan,
    c.term_bright_white,
  }

  for index, color in ipairs(terminalColors) do
    vim.g['terminal_color_' .. (index - 1)] = color
  end
end

---@param opts? OrngConfig
function M.setup(opts)
  M.config = mergeTables(M.config, opts)
end

---@param opts? OrngConfig
function M.load(opts)
  local runtimeConfig = mergeTables(M.config, opts)
  local style = runtimeConfig.style or 'dark'
  local colors = M.colors(style, runtimeConfig.colors)

  if vim.g.colors_name then
    vim.cmd('hi clear')
  end

  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.g.colors_name = getColorschemeName(style)
  vim.o.termguicolors = true

  require('orng.highlights').setup(colors, {
    highlights = runtimeConfig.highlights,
    transparent = runtimeConfig.transparent,
  })

  setTerminalColors(colors)

  M.state = {
    style = style,
  }

  if runtimeConfig.integrations and runtimeConfig.integrations.lualine then
    local hasLualine, lualine = pcall(require, 'lualine')
    if hasLualine then
      lualine.setup({ options = { theme = M.lualine(style) } })
    end
  end
end

vim.api.nvim_create_user_command('OrngDark', function()
  vim.cmd.colorscheme('orng')
end, {})

vim.api.nvim_create_user_command('OrngLight', function()
  vim.cmd.colorscheme('orng-light')
end, {})

return M
