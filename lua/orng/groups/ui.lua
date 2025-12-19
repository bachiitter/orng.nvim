local M = {}

---@param c table color palette
---@param opts table options
---@return table
function M.get(c, opts)
  local bg_dark = opts.transparent and "NONE" or c.bg_dark

  return {
    -- Telescope
    TelescopeNormal = { fg = c.fg, bg = bg_dark },
    TelescopeBorder = { fg = c.border, bg = bg_dark },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_highlight },
    TelescopePromptBorder = { fg = c.bg_highlight, bg = c.bg_highlight },
    TelescopePromptTitle = { fg = c.bg, bg = c.accent },
    TelescopePreviewTitle = { fg = c.bg, bg = c.success },
    TelescopeResultsTitle = { fg = c.bg, bg = c.info },
    TelescopeSelection = { bg = c.bg_visual },
    TelescopeSelectionCaret = { fg = c.accent },
    TelescopeMatching = { fg = c.accent, bold = true },

    -- Which-key
    WhichKey = { fg = c.accent },
    WhichKeyGroup = { fg = c.info },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeperator = { fg = c.fg_muted },
    WhichKeySeparator = { fg = c.fg_muted },
    WhichKeyFloat = { bg = bg_dark },

    -- Noice
    NoiceCmdline = { fg = c.fg },
    NoiceCmdlineIcon = { fg = c.accent },
    NoiceCmdlineIconSearch = { fg = c.warning },
    NoiceCmdlinePopup = { fg = c.fg, bg = bg_dark },
    NoiceCmdlinePopupBorder = { fg = c.border },
    NoiceCmdlinePopupBorderSearch = { fg = c.warning },
    NoiceConfirm = { fg = c.fg, bg = bg_dark },
    NoiceConfirmBorder = { fg = c.border },
    NoiceCursor = { fg = c.bg, bg = c.fg },
    NoiceMini = { fg = c.fg, bg = bg_dark },
    NoicePopup = { fg = c.fg, bg = bg_dark },
    NoicePopupBorder = { fg = c.border },
    NoicePopupmenu = { fg = c.fg, bg = bg_dark },
    NoicePopupmenuBorder = { fg = c.border },
    NoicePopupmenuMatch = { fg = c.accent, bold = true },
    NoicePopupmenuSelected = { bg = c.bg_visual },
    NoiceScrollbar = { fg = c.fg_muted, bg = c.bg_highlight },
    NoiceScrollbarThumb = { bg = c.fg_muted },
    NoiceVirtualText = { fg = c.accent },
    NoiceFormatTitle = { fg = c.accent },
    NoiceFormatProgressDone = { fg = c.bg, bg = c.accent },
    NoiceFormatProgressTodo = { fg = c.fg, bg = c.bg_highlight },

    -- Notify
    NotifyBackground = { bg = c.bg },
    NotifyERRORBorder = { fg = c.error },
    NotifyERRORIcon = { fg = c.error },
    NotifyERRORTitle = { fg = c.error, bold = true },
    NotifyERRORBody = { fg = c.fg },
    NotifyWARNBorder = { fg = c.warning },
    NotifyWARNIcon = { fg = c.warning },
    NotifyWARNTitle = { fg = c.warning, bold = true },
    NotifyWARNBody = { fg = c.fg },
    NotifyINFOBorder = { fg = c.info },
    NotifyINFOIcon = { fg = c.info },
    NotifyINFOTitle = { fg = c.info, bold = true },
    NotifyINFOBody = { fg = c.fg },
    NotifyDEBUGBorder = { fg = c.fg_muted },
    NotifyDEBUGIcon = { fg = c.fg_muted },
    NotifyDEBUGTitle = { fg = c.fg_muted, bold = true },
    NotifyDEBUGBody = { fg = c.fg },
    NotifyTRACEBorder = { fg = c.hint },
    NotifyTRACEIcon = { fg = c.hint },
    NotifyTRACETitle = { fg = c.hint, bold = true },
    NotifyTRACEBody = { fg = c.fg },

    -- Trouble
    TroubleNormal = { fg = c.fg, bg = bg_dark },
    TroubleNormalNC = { fg = c.fg, bg = bg_dark },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.bg, bg = c.accent, bold = true },
    TroubleError = { fg = c.error },
    TroubleWarning = { fg = c.warning },
    TroubleInformation = { fg = c.info },
    TroubleHint = { fg = c.hint },
    TroubleLocation = { fg = c.fg_muted },
    TroubleFile = { fg = c.accent },
    TroubleFoldIcon = { fg = c.accent },
    TroubleSource = { fg = c.fg_muted },
    TroubleCode = { fg = c.fg_muted },
    TroubleIndent = { fg = c.fg_dark },

    -- Lazy
    LazyH1 = { fg = c.bg, bg = c.accent, bold = true },
    LazyH2 = { fg = c.accent, bold = true },
    LazyReasonPlugin = { fg = c.accent },
    LazyValue = { fg = c.string },
    LazyDir = { fg = c.fg_muted },
    LazyUrl = { fg = c.info, underline = true },
    LazyCommit = { fg = c.success },
    LazyNoCond = { fg = c.error },
    LazySpecial = { fg = c.accent },
    LazyReasonFt = { fg = c.type },
    LazyOperator = { fg = c.fg },
    LazyReasonKeys = { fg = c.keyword },
    LazyReasonStart = { fg = c.success },
    LazyReasonSource = { fg = c.string },
    LazyReasonEvent = { fg = c.warning },
    LazyReasonCmd = { fg = c.func },
    LazyButton = { fg = c.fg, bg = c.bg_highlight },
    LazyButtonActive = { fg = c.bg, bg = c.accent, bold = true },
    LazyProgressDone = { fg = c.accent },
    LazyProgressTodo = { fg = c.fg_dark },

    -- Mason
    MasonHeader = { fg = c.bg, bg = c.accent, bold = true },
    MasonHeaderSecondary = { fg = c.bg, bg = c.info, bold = true },
    MasonHighlight = { fg = c.accent },
    MasonHighlightBlock = { fg = c.bg, bg = c.accent },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.accent, bold = true },
    MasonHighlightSecondary = { fg = c.info },
    MasonHighlightBlockSecondary = { fg = c.bg, bg = c.info },
    MasonMuted = { fg = c.fg_muted },
    MasonMutedBlock = { fg = c.fg_muted, bg = c.bg_highlight },

    -- Dashboard / Alpha
    DashboardHeader = { fg = c.accent },
    DashboardFooter = { fg = c.fg_muted, italic = true },
    DashboardCenter = { fg = c.fg },
    DashboardShortCut = { fg = c.accent },
    DashboardKey = { fg = c.accent, bold = true },
    DashboardDesc = { fg = c.fg },
    DashboardIcon = { fg = c.accent },
    AlphaHeader = { fg = c.accent },
    AlphaButtons = { fg = c.fg },
    AlphaShortcut = { fg = c.accent, bold = true },
    AlphaFooter = { fg = c.fg_muted, italic = true },

    -- Harpoon
    HarpoonWindow = { fg = c.fg, bg = bg_dark },
    HarpoonBorder = { fg = c.border, bg = bg_dark },

    -- Flash / Leap / Hop
    FlashBackdrop = { fg = c.fg_dark },
    FlashMatch = { fg = c.fg, bg = c.bg_visual },
    FlashCurrent = { fg = c.bg, bg = c.accent },
    FlashLabel = { fg = c.bg, bg = c.accent, bold = true },
    LeapMatch = { fg = c.bg, bg = c.accent, bold = true },
    LeapLabelPrimary = { fg = c.bg, bg = c.accent, bold = true },
    LeapLabelSecondary = { fg = c.bg, bg = c.info, bold = true },
    LeapBackdrop = { fg = c.fg_dark },
    HopNextKey = { fg = c.accent, bold = true },
    HopNextKey1 = { fg = c.accent, bold = true },
    HopNextKey2 = { fg = c.accent_alt },
    HopUnmatched = { fg = c.fg_dark },

    -- IndentBlankline
    IndentBlanklineChar = { fg = c.bg_highlight },
    IndentBlanklineContextChar = { fg = c.accent },
    IndentBlanklineContextStart = { sp = c.accent, underline = true },
    IblIndent = { fg = c.bg_highlight },
    IblScope = { fg = c.accent },

    -- Illuminate
    IlluminatedWordText = { bg = c.bg_visual },
    IlluminatedWordRead = { bg = c.bg_visual },
    IlluminatedWordWrite = { bg = c.bg_visual },

    -- Mini
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.accent, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.success, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.info, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.error, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.warning, bold = true },
  }
end

return M
