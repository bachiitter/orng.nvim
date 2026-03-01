local M = {}

---@param highlights table<string, vim.api.keyset.highlight>
---@param groupHighlights table<string, vim.api.keyset.highlight>
---@return table<string, vim.api.keyset.highlight>
local function mergeHighlights(highlights, groupHighlights)
  return vim.tbl_deep_extend('force', highlights, groupHighlights)
end

---@param c table
---@param opts? { transparent?: boolean, highlights?: table<string, vim.api.keyset.highlight> }
---@return table<string, vim.api.keyset.highlight>
function M.get(c, opts)
  local options = opts or {}
  local groupOptions = {
    transparent = options.transparent,
  }

  local highlights = {}
  highlights = mergeHighlights(highlights, require('orng.groups.editor').get(c, groupOptions))
  highlights = mergeHighlights(highlights, require('orng.groups.syntax').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.treesitter').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.lsp').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.cmp').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.filetree').get(c, groupOptions))
  highlights = mergeHighlights(highlights, require('orng.groups.git').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.ui').get(c, groupOptions))
  highlights = mergeHighlights(highlights, require('orng.groups.bufferline').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.dap').get(c))
  highlights = mergeHighlights(highlights, require('orng.groups.neogit').get(c, groupOptions))
  highlights = mergeHighlights(highlights, require('orng.groups.markdown').get(c))

  if options.highlights and next(options.highlights) then
    highlights = mergeHighlights(highlights, options.highlights)
  end

  return highlights
end

---@param c table
---@param opts? { transparent?: boolean, highlights?: table<string, vim.api.keyset.highlight> }
function M.setup(c, opts)
  local highlights = M.get(c, opts)
  for groupName, groupStyle in pairs(highlights) do
    vim.api.nvim_set_hl(0, groupName, groupStyle)
  end
end

return M
