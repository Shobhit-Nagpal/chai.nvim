local chai_colors = require("chai.palette").colors
local chai_themes = require("chai.palette").themes

-- Alias for shorter commands
local cmd = vim.cmd
local fn = vim.fn

local opts = {}
local default_opts = {
  comment_italics = true,
  transparent_background = false,
  transparent_float_background = false,
  reverse_visual = false,
  dim_nc = true,
  cmp_cmdline_disable_search_highlight_group = false,
  telescope_border_follow_float_background = false,
  lspsaga_border_follow_float_background = false,
  diagnostic_virtual_text_background = false,
  colors = {}, -- override `chai_colors`
  themes = {}, -- override `chai_themes`
}

local M = {
  Color =  require("colorbuddy.init").Color,
  colors =  require("colorbuddy.init").colors,
  Group =  require("colorbuddy.init").Group,
  groups =  require("colorbuddy.init").groups,
  styles =  require("colorbuddy.init").styles,
}

function M.setup(user_opts)
  user_opts = user_opts or {}

  opts = vim.tbl_extend("force", default_opts, user_opts)
  chai_colors = vim.tbl_extend("force", chai_colors, opts.colors)
  chai_themes = vim.tbl_extend("force", chai_themes, opts.themes)

end

function M.load()
  -- vim.g.colors_name gives the current color scheme
  if vim.g.colors_name then
    cmd("hi clear") -- vim command to clear all highlight definitions
  end

  -- checking if syntax highlighting is on, if it is then reset is
  if fn.exists("syntax on") then
    cmd("syntax reset")
  end

  vim.g.colors_name = "chai"

  local Color =  M.Color
  local colors =  M.colors
  local Group =  M.Group
  local groups =  M.groups
  local styles =  M.styles

  -- Setting the colors
  Color.new("bg", chai_themes.background)

  Color.new("black", chai_colors.black)
  Color.new("white", chai_colors.white)
  Color.new("gray1", chai_colors.gray1)
  Color.new("gray2", chai_colors.gray2)
  Color.new("gray3", chai_colors.gray3)
  Color.new("gray4", chai_colors.gray4)
  Color.new("gray5", chai_colors.gray5)
  Color.new("gray6", chai_colors.gray6)

  Color.new("primary", chai_themes.primary)

  Color.new("baseForeground", chai_themes.foreground)
  Color.new("activeForeground", chai_themes.activeForeground)
  Color.new("secondaryForeground", chai_themes.secondaryForeground)
  Color.new("ignored", chai_themes.ignored)
  Color.new("border", chai_themes.border)

  Color.new("baseBackground", chai_themes.background)
  Color.new("activeBackground", chai_themes.activeBackground)

  Color.new("lowBackground", chai_themes.lowBackground)
  Color.new("lowActiveBackground", chai_themes.lowActiveBackground)
  Color.new("lowBorder", chai_themes.lowBorder)

  Color.new("comment", chai_themes.comment)
  Color.new("string", chai_themes.string)
  Color.new("variable", chai_themes.variable)
  Color.new("keyword", chai_themes.keyword)
  Color.new("number", chai_themes.number)
  Color.new("boolean", chai_themes.boolean)
  Color.new("operator", chai_themes.operator)
  Color.new("func", chai_themes.func)
  Color.new("constant", chai_themes.constant)
  Color.new("class", chai_themes.class)
  Color.new("interface", chai_themes.interface)
  Color.new("type", chai_themes.type)
  Color.new("builtin", chai_themes.builtin)
  Color.new("property", chai_themes.property)
  Color.new("namespace", chai_themes.namespace)
  Color.new("punctuation", chai_themes.punctuation)
  Color.new("decorator", chai_themes.decorator)
  Color.new("regex", chai_themes.regex)

  -- Creating the groups
  Group.new("Comment", colors.comment, colors.none, opts.comment_italic and styles.italic or styles.NONE)
  Group.new("String", colors.string)
  Group.new("Variable", colors.variable)
  Group.new("Keyword", colors.keyword, colors.none, styles.bold)
  Group.new("Number", colors.number)
  Group.new("Boolean", colors.boolean)
  Group.new("Operator", colors.operator)
  Group.new("Function", colors.func)
  Group.new("Constant", colors.constant)
  Group.new("Class", colors.class)
  Group.new("Interface", colors.interface)
  Group.new("Type", colors.type)
  Group.new("Builtin", colors.builtin)
  Group.new("Property", colors.property)
  Group.new("Namespace", colors.namespace)
  Group.new("Decorator", colors.decorator)
  Group.new("Regex", colors.regex)

  Color.new("green", chai_themes.green)
  Color.new("cyan", chai_themes.cyan)
  Color.new("blue", chai_themes.blue)
  Color.new("red", chai_themes.red)
  Color.new("orange", chai_themes.orange)
  Color.new("yellow", chai_themes.yellow)
  Color.new("magenta", chai_themes.magenta)

  Color.new("Error", chai_themes.error)
  Color.new("Warning", chai_themes.warning)
  Color.new("Info", chai_themes.info)
  Color.new("Hint", chai_themes.hint)

  Group.new("Error", colors.Error)
  Group.new("Warn", colors.Warning)
  Group.new("Info", colors.Info)
  Group.new("Hint", colors.Hint)

  local normal = {
    fg = colors.baseForeground,

    bg = colors.baseBackground,
    nc_fg = colors.baseForeground,
    float_bg = colors.lowBackground
  }

  if opts.transparent_background then
    normal.bg = colors.none
  end

  if opts.transparent_float_background then
    normal.transparent_float_background = colors.none
  end

  if opts.dim_nc then
    normal.nc_fg = colors.secondaryForeground
  end

  Group.new("Normal", normal.fg, normal.bg)
  Group.new("NormalNC", normal.nc_fg, normal.bg)
  Group.new("NormalFloat", groups.Normal, normal.float_bg)

  -- Popup Menu
  Group.link("Pmenu", groups.NormalFloat)
  Group.new("PmenuSel", colors.activeBackground, normal.fg, styles.reverse)
  Group.new("PmenuSbar", colors.black, colors.none, styles.reverse)
  Group.new("PmenuThumb", colors.black, colors.none, styles.reverse)

  -- be nice for this float border to be cyan if active
  -- https://neovim.io/doc/user/news-0.10.html#_-breaking-changes
  Group.link("FloatBorder", groups.NormalFloat)

  Group.new("LineNr", colors.ignored:light():light(), colors.none, styles.NONE)
  Group.new("CursorLine", colors.none, colors.lowActiveBackground, styles.NONE)
  Group.new("CursorLineNr", colors.activeForeground, colors.none, styles.NONE)
  Group.new("Cursor", colors.black, colors.secondaryForeground, styles.NONE)
  Group.link("lCursor", groups.Cursor)
  Group.link("TermCursor", groups.Cursor)
  Group.new("TermCursorNC", colors.black, colors.activeBackground)

  Group.link("Identifier", groups.Property)

  -- any statement, conditional, repeat (for, do while), label, operator
  Group.new("Statement", colors.green)
  Group.new("PreProc", colors.red)
  Group.new("Special", colors.property)
  Group.new("SpecialKey", colors.property)
  Group.new("Underlined", colors.red)
  Group.new("Strikethrough", colors.activeBackground, colors.none, styles.NONE)
  Group.new("Ignore", groups.Comment)
  Group.new("Todo", colors.blue)

  Group.link("Include", groups.PreProc)
  Group.link("Macro", groups.PreProc)
  Group.link("Delimiter", groups.Special)
  Group.link("Repeat", groups.Statement)
  Group.link("Conditional", groups.Statement)
  Group.link("Define", groups.PreProc)
  Group.link("Character", groups.Constant)
  Group.link("Float", groups.Constant)
  Group.link("Debug", groups.Special)
  Group.link("Label", groups.Statement)
  Group.link("Exception", groups.Statement)
  Group.link("StorageClass", groups.Type)

  Group.link("SpecialChar", groups.Special)
  Group.new("SpecialKey", colors.black, colors.black, styles.bold)
  Group.link("String", groups.String)
  Group.new("NonText", colors.black, colors.none, styles.bold)
  Group.new("StatusLine", colors.blue, colors.none, styles.bold)
  Group.new("StatusLineNC", colors.lowBackground, colors.none, styles.reverse)
  Group.new("Visual", colors.activeBackground, colors.white, opts.reverse_visual and styles.reverse or styles.NONE)
  Group.new("Directory", colors.blue)
  Group.new("ErrorMsg", colors.red, colors.none, styles.reverse)

  Group.new("IncSearch", colors.orange, colors.none, styles.standout)
  Group.new("Search", colors.yellow, colors.none, styles.reverse)

  Group.new("MoreMsg", colors.blue, colors.none,  styles.NONE)
  Group.new("ModeMsg", colors.blue, colors.none,  styles.NONE)
  Group.new("Question", colors.cyan, colors.none,  styles.bold)
  Group.new("VertSplit", colors.black, colors.none,  styles.NONE)
  Group.new("Title", colors.orange, colors.none,  styles.bold)
  Group.new("VisualNOS", colors.none, colors.black,  styles.reverse)
  Group.new("WarningMsg", groups.Warn)
  Group.new("WildMenu", colors.baseForeground, colors.black, styles.reverse)
  Group.new("Folded", colors.secondaryForeground, colors.black, styles.bold, colors.black)
  Group.new("FoldColumn", colors.secondaryForeground, colors.black)

  Group.new("SignColumn", colors.secondaryForeground, colors.none, styles.NONE)
  Group.new("Conceal", colors.blue, colors.none, styles.NONE)

  Group.new("SpellBad", colors.none, colors.none, styles.undercurl, colors.red)
  Group.new("SpellCap", colors.none, colors.none, styles.undercurl, colors.purple)
  Group.new("SpellRare", colors.none, colors.none, styles.undercurl, colors.cyan)
  Group.new("SpellLocal", colors.none, colors.none, styles.undercurl, colors.yellow)

  Group.new("MatchParen", colors.red, colors.activeBackground, styles.bold)

  -- Vim highlighting
  Group.link("vimVar", groups.Identifier)
  Group.link("vimFunc", groups.Identifier)
  Group.link("vimUserFunc", groups.Identifier)
  Group.link("helpSpecial", groups.Special)
  Group.link("vimSet", groups.Normal)
  Group.link("vimSetEqual", groups.Normal)
  Group.new("vimCommentString", colors.purple)
  Group.new("vimCommand", colors.yellow)
  Group.new("vimCmdSep", colors.blue, colors.none, styles.bold)
  Group.new("helpExample", colors.baseForeground)
  Group.new("helpOption", colors.cyan)
  Group.new("helpNote", colors.magenta)
  Group.new("helpVim", colors.magenta)
  Group.new("helpHyperTextJump", colors.blue, colors.none, styles.underline)
  Group.new("helpHyperTextEntry", colors.green)
  Group.new("vimIsCommand", colors.black)
  Group.new("vimSynMtchOpt", colors.yellow)
  Group.new("vimSynType", colors.cyan)
  Group.new("vimHiLink", colors.blue)
  Group.new("vimGroup", colors.blue, colors.none, styles.underline + styles.bold)

  -- diff
  Group.new("DiffAdd", colors.none, colors.green:dark():dark(), styles.bold, colors.green)
  Group.new("DiffChange", colors.none, colors.orange:dark():dark():dark():dark(), styles.bold, colors.orange)
  Group.new("DiffDelete", colors.none, colors.red:dark():dark():dark():dark(), styles.bold, colors.red)
  Group.new("DiffText", colors.none, colors.blue:dark():dark():dark():dark(), styles.bold, colors.blue)

  -- alias ui
  Group.new("Folder", colors.orange)
  Group.new("FolderRoot", colors.blue)

  -- plugins

  -- treesitter, important
  require("chai.plugins.treesitter")(opts)
  -- lsp
  require("chai.plugins.lsp")(opts)
  -- neomake
  require("chai.plugins.neomake")
  -- gitgutter
  require("chai.plugins.gitgutter")
  -- gitsigns
  require("chai.plugins.gitsigns")
  -- cmp
  require("chai.plugins.cmp")(opts)
  -- lspsaga
  require("chai.plugins.lspsaga")(opts, { normal = normal })
  -- telescope
  require("chai.plugins.telescope")(opts, { normal = normal })
  -- neogit
  require("chai.plugins.neogit")(opts)
  -- Primeagen/harpoon
  require("chai.plugins.harpoon")
  -- nvim-tree/nvim-tree.lua
  require("chai.plugins.nvim-tree")
  -- phaazon/hop.nvim
  require("chai.plugins.hop")
  -- j-hui/fidget
  require("chai.plugins.fidget")
  -- lukas-reineke/indent-blankline.nvim
  require("chai.plugins.indent-blankline")
  -- folke/which-key.nvim
  require("chai.plugins.which-key")
  -- folke/noice.nvim
  require("chai.plugins.noice")(opts, { normal = normal })
  -- neo-tree
  require("chai.plugins.neo-tree")(opts)
  -- alpha
  require("chai.plugins.alpha")(opts)
  -- echasnovski/mini.indentscope
  require("chai.plugins.mini-indentscope")(opts)
  -- vim-illuminate
  require("chai.plugins.illuminate")(opts)
  -- seblj/nvim-tabline
  require("chai.plugins.tabline")(opts, { normal = normal })

  return M
end

return M
