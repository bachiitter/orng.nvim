# 🍊 orng.nvim

A warm, orange-accented Neovim colorscheme ported from the [Zed "orng" theme](https://github.com/zed-industries/zed) by Matt Silverlock / Cloudflare.

## ✨ Features

- 🌗 Dark and light variants
- 🪟 Transparent background support
- 🎨 Consistent colors across 30+ plugins
- 🔧 Easy customization via Lua

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "bachiitter/orng.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("orng").setup()
  end,
}
```

## ⚙️ Configuration

```lua
require("orng").setup({
  style = "dark",         -- "dark" or "light"
  transparent = false,    -- Enable transparent background
  integrations = {
    lualine = true,       -- Auto-configure lualine theme
  },
  colors = {},            -- Override palette colors
  highlights = {},        -- Override highlight groups
})
```

## 🎯 Commands

| Command | Description |
|---------|-------------|
| `:colorscheme orng` | Load dark theme |
| `:colorscheme orng-light` | Load light theme |
| `:OrngDark` | Switch to dark theme |
| `:OrngLight` | Switch to light theme |

## 🔌 Supported Plugins

**LSP & Completion:** nvim-lspconfig, nvim-cmp, blink.cmp  
**Syntax:** nvim-treesitter  
**File Explorers:** neo-tree.nvim, nvim-tree.lua, oil.nvim  
**Git:** gitsigns.nvim  
**UI:** lualine.nvim, bufferline.nvim, telescope.nvim, which-key.nvim, noice.nvim, nvim-notify, trouble.nvim, lazy.nvim, mason.nvim, dashboard.nvim, flash.nvim, leap.nvim, hop.nvim, harpoon, indent-blankline.nvim, vim-illuminate, mini.nvim

## 📜 License

MIT
