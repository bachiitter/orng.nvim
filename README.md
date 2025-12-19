# 🍊 orng.nvim

A warm, orange-accented Neovim colorscheme ported from the [Zed "orng" theme](https://github.com/zed-industries/zed) by Matt Silverlock / Cloudflare.

## 📸 Screenshots

<!-- Add your screenshots here -->
<!-- ![Dark Theme](./screenshots/dark.png) -->
<!-- ![Light Theme](./screenshots/light.png) -->

## ✨ Features

- 🌗 Dark and light variants
- 🪟 Transparent background support
- 🎨 Consistent colors across 35+ plugins
- 🔧 Easy customization via Lua
- 🏥 Health check for debugging

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
| `:checkhealth orng` | Run health check |

## 🔌 Supported Plugins

**LSP & Completion:** nvim-lspconfig, nvim-cmp, blink.cmp  
**Syntax:** nvim-treesitter, render-markdown.nvim  
**File Explorers:** neo-tree.nvim, nvim-tree.lua, oil.nvim  
**Git:** gitsigns.nvim, neogit, diffview.nvim  
**Debug:** nvim-dap, nvim-dap-ui  
**UI:** lualine.nvim, bufferline.nvim, telescope.nvim, which-key.nvim, noice.nvim, nvim-notify, trouble.nvim, lazy.nvim, mason.nvim, dashboard.nvim, alpha-nvim, flash.nvim, leap.nvim, hop.nvim, harpoon, indent-blankline.nvim, vim-illuminate, mini.nvim

## 🎨 Extras

### tmux

Add to your `~/.tmux.conf`:

```bash
# Dark theme
source-file /path/to/orng.nvim/extras/tmux/orng.tmux

# Or light theme
source-file /path/to/orng.nvim/extras/tmux/orng-light.tmux
```

See [extras/tmux/README.md](extras/tmux/README.md) for details.

## 📜 License

MIT

