local M = {}

local health = vim.health or require("health")

function M.check()
  health.start("orng.nvim")

  -- Check Neovim version
  if vim.fn.has("nvim-0.8") == 1 then
    health.ok("Neovim >= 0.8")
  else
    health.warn("Neovim >= 0.8 recommended for best experience")
  end

  -- Check termguicolors
  if vim.o.termguicolors then
    health.ok("termguicolors is enabled")
  else
    health.error("termguicolors is disabled (required for true color support)")
  end

  -- Check if colorscheme is loaded
  if vim.g.colors_name == "orng" then
    health.ok("orng colorscheme is active")
  else
    health.info("orng colorscheme is not currently active (current: " .. (vim.g.colors_name or "none") .. ")")
  end

  -- Check config
  local ok, orng = pcall(require, "orng")
  if ok then
    health.ok("orng module loaded successfully")
    health.info("Current style: " .. (orng.config.style or "dark"))
    health.info("Transparent: " .. tostring(orng.config.transparent or false))
  else
    health.error("Failed to load orng module")
  end

  -- Check group modules
  local groups = {
    "editor", "syntax", "treesitter", "lsp", "cmp", "filetree",
    "git", "ui", "bufferline", "dap", "neogit", "markdown"
  }

  local loaded_count = 0
  for _, group in ipairs(groups) do
    local group_ok = pcall(require, "orng.groups." .. group)
    if group_ok then
      loaded_count = loaded_count + 1
    end
  end

  if loaded_count == #groups then
    health.ok("All " .. #groups .. " highlight group modules loaded")
  else
    health.warn("Only " .. loaded_count .. "/" .. #groups .. " group modules loaded")
  end
end

return M
