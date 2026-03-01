local M = {}

local health = vim.health or require('health')

---@return boolean
local function isOrngColorschemeActive()
  local activeColorscheme = vim.g.colors_name
  return activeColorscheme == 'orng' or activeColorscheme == 'orng-light'
end

function M.check()
  health.start('orng.nvim')

  if vim.fn.has('nvim-0.8') == 1 then
    health.ok('Neovim >= 0.8')
  end

  if vim.fn.has('nvim-0.8') ~= 1 then
    health.warn('Neovim >= 0.8 recommended for best experience')
  end

  if vim.o.termguicolors then
    health.ok('termguicolors is enabled')
  end

  if not vim.o.termguicolors then
    health.error('termguicolors is disabled (required for true color support)')
  end

  if isOrngColorschemeActive() then
    health.ok('orng colorscheme is active')
  end

  if not isOrngColorschemeActive() then
    health.info('orng colorscheme is not currently active (current: ' .. (vim.g.colors_name or 'none') .. ')')
  end

  local hasOrngModule, orng = pcall(require, 'orng')
  if hasOrngModule then
    health.ok('orng module loaded successfully')
    local activeStyle = (orng.state and orng.state.style) or orng.config.style or 'dark'
    health.info('Current style: ' .. activeStyle)
    health.info('Transparent: ' .. tostring(orng.config.transparent or false))
  end

  if not hasOrngModule then
    health.error('Failed to load orng module')
  end

  local modules = {
    'palette',
    'highlights',
    'groups.editor',
    'groups.syntax',
    'groups.treesitter',
    'groups.lsp',
    'groups.cmp',
    'groups.filetree',
    'groups.git',
    'groups.ui',
    'groups.bufferline',
    'groups.dap',
    'groups.neogit',
    'groups.markdown',
  }

  local loadedModulesCount = 0
  for _, module in ipairs(modules) do
    local isModuleLoaded = pcall(require, 'orng.' .. module)
    if isModuleLoaded then
      loadedModulesCount = loadedModulesCount + 1
    end
  end

  if loadedModulesCount == #modules then
    health.ok('All ' .. #modules .. ' modules loaded')
  end

  if loadedModulesCount ~= #modules then
    health.warn('Only ' .. loadedModulesCount .. '/' .. #modules .. ' modules loaded')
  end
end

return M
