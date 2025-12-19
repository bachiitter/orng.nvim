local M = {}

---@param c table color palette
---@return table
function M.get(c)
  return {
    Comment = { fg = c.comment, italic = true },
    Constant = { fg = c.constant },
    String = { fg = c.string },
    Character = { fg = c.string },
    Number = { fg = c.number },
    Boolean = { fg = c.boolean },
    Float = { fg = c.number },
    Identifier = { fg = c.variable },
    Function = { fg = c.func },
    Statement = { fg = c.keyword },
    Conditional = { fg = c.keyword },
    Repeat = { fg = c.keyword },
    Label = { fg = c.keyword },
    Operator = { fg = c.operator },
    Keyword = { fg = c.keyword },
    Exception = { fg = c.keyword },
    PreProc = { fg = c.keyword },
    Include = { fg = c.keyword },
    Define = { fg = c.keyword },
    Macro = { fg = c.keyword },
    PreCondit = { fg = c.keyword },
    Type = { fg = c.type },
    StorageClass = { fg = c.keyword },
    Structure = { fg = c.type },
    Typedef = { fg = c.type },
    Special = { fg = c.accent },
    SpecialChar = { fg = c.string },
    Tag = { fg = c.tag },
    Delimiter = { fg = c.fg },
    SpecialComment = { fg = c.comment },
    Debug = { fg = c.warning },
    Underlined = { underline = true },
    Ignore = { fg = c.fg_dark },
    Error = { fg = c.error },
    Todo = { fg = c.accent, bold = true },
  }
end

return M
