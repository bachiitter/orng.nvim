-------------------------------------------------------------------------------
-- orng.nvim - Neovim colorscheme
-- Ported from Zed "orng" theme by Matt Silverlock / Cloudflare
-------------------------------------------------------------------------------

local M = {}

---@class OrngConfig
---@field style? "dark"|"light"
---@field transparent? boolean
---@field integrations? { lualine?: boolean }
---@field colors? table
---@field highlights? table

---@type OrngConfig
M.config = {
  style = "dark",
  transparent = false,
  integrations = {
    lualine = false,
  },
  colors = {},
  highlights = {},
}

--- Deep merge tables
---@param t1 table
---@param t2 table
---@return table
local function deep_merge(t1, t2)
  for k, v in pairs(t2) do
    if type(v) == "table" and type(t1[k]) == "table" then
      deep_merge(t1[k], v)
    else
      t1[k] = v
    end
  end
  return t1
end

--- Get color palette for style
---@param style "dark"|"light"
---@return table
function M.colors(style)
  style = style or M.config.style
  local palette = require("orng.colors." .. style)
  return vim.deepcopy(palette[style])
end

--- Get lualine theme
---@param style? "dark"|"light"
---@return table
function M.lualine(style)
  local c = M.colors(style)
  return {
    normal = {
      a = { bg = c.accent, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    insert = {
      a = { bg = c.success, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    visual = {
      a = { bg = c.info, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    replace = {
      a = { bg = c.error, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_highlight, fg = c.fg },
      c = { bg = c.bg_dark, fg = c.fg_muted },
    },
    command = {
      a = { bg = c.warning, fg = c.bg, gui = "bold" },
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

--- Load colorscheme
---@param opts? OrngConfig
function M.setup(opts)
  opts = opts or {}
  M.config = deep_merge(M.config, opts)

  local style = M.config.style
  local c = M.colors(style)

  -- Apply color overrides
  if M.config.colors and next(M.config.colors) then
    deep_merge(c, M.config.colors)
  end

  -- Reset highlights
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "orng"

  local opts_for_groups = { transparent = M.config.transparent }

  -- Collect all highlight groups
  local groups = {}
  deep_merge(groups, require("orng.groups.editor").get(c, opts_for_groups))
  deep_merge(groups, require("orng.groups.syntax").get(c))
  deep_merge(groups, require("orng.groups.treesitter").get(c))
  deep_merge(groups, require("orng.groups.lsp").get(c))
  deep_merge(groups, require("orng.groups.cmp").get(c))
  deep_merge(groups, require("orng.groups.filetree").get(c, opts_for_groups))
  deep_merge(groups, require("orng.groups.git").get(c))
  deep_merge(groups, require("orng.groups.ui").get(c, opts_for_groups))
  deep_merge(groups, require("orng.groups.bufferline").get(c))

  -- Apply highlight overrides
  if M.config.highlights and next(M.config.highlights) then
    deep_merge(groups, M.config.highlights)
  end

  -- Set highlights
  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  -- Terminal colors
  vim.g.terminal_color_0 = c.term_black
  vim.g.terminal_color_1 = c.term_red
  vim.g.terminal_color_2 = c.term_green
  vim.g.terminal_color_3 = c.term_yellow
  vim.g.terminal_color_4 = c.term_blue
  vim.g.terminal_color_5 = c.term_magenta
  vim.g.terminal_color_6 = c.term_cyan
  vim.g.terminal_color_7 = c.term_white
  vim.g.terminal_color_8 = c.fg_muted
  vim.g.terminal_color_9 = c.term_red
  vim.g.terminal_color_10 = c.term_green
  vim.g.terminal_color_11 = c.term_yellow
  vim.g.terminal_color_12 = c.term_blue
  vim.g.terminal_color_13 = c.term_magenta
  vim.g.terminal_color_14 = c.term_cyan
  vim.g.terminal_color_15 = c.fg

  -- Lualine integration
  if M.config.integrations.lualine then
    local ok, lualine = pcall(require, "lualine")
    if ok then
      lualine.setup({ options = { theme = M.lualine(style) } })
    end
  end
end

-- Commands
vim.api.nvim_create_user_command("OrngDark", function()
  M.setup({ style = "dark" })
end, {})

vim.api.nvim_create_user_command("OrngLight", function()
  M.setup({ style = "light" })
end, {})

return M
