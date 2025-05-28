return function(_)
  local Group = require("colorbuddy.init").Group
  local colors = require("colorbuddy.init").colors
  local groups = require("colorbuddy.init").groups
  local styles = require("colorbuddy.init").styles
  local hl = require("chai.util").hl

  Group.new("@tag", colors.green)
  Group.new("@tag.attribute", colors.property)
  Group.new("@tag.delimiter", colors.punctuation)

  Group.new("@none", colors.none)
  Group.link("@comment", groups.Comment)
  Group.link("@error", groups.Error)
  Group.link("@preproc", groups.PreProc)
  Group.link("@define", groups.Define)
  Group.link("@operator", groups.Operator)

  Group.new("@punctuation", colors.punctuation)
  Group.link("@punctuation.delimiter", groups.Delimiter)
  Group.new("@punctuation.bracket", colors.yellow)
  Group.link("@punctuation.special", groups.Builtin)

  Group.link("@string", groups.String)
  Group.link("@string.regex", groups.Regex)
  Group.link("@string.escape", groups.String)
  Group.link("@string.special", groups.Special)

  Group.link("@character", groups.Character)
  Group.link("@character.special", groups.Special)

  Group.link("@boolean", groups.Builtin)
  Group.link("@number", groups.Number)
  Group.link("@float", groups.Float)

  Group.link("@function", groups.Function)
  Group.link("@function.call", groups.Function)
  Group.link("@function.builtin", groups.Function)
  Group.link("@function.macro", groups.Macro)

  Group.new("@method", colors.blue)
  Group.new("@method.call", colors.blue)

  Group.link("@constructor", groups.Function)

  hl("@parameter", { link = "@variable" })

  Group.link("@keyword", groups.Keyword)
  Group.link("@keyword.function", groups.Operator)
  Group.link("@keyword.operator", groups.Operator)
  Group.link("@keyword.coroutine", groups.Operator)
  Group.new("@keyword.import", colors.keyword, colors.none, styles.italic)
  Group.new("@keyword.local", colors.keyword, colors.none, styles.italic)
  Group.new("@keyword.export", colors.keyword, colors.none, styles.italic)
  Group.new("@keyword.package", colors.keyword, colors.none, styles.italic)

  Group.link("@conditional", groups.Conditional)
  Group.link("@repeat", groups.Repeat)
  Group.link("@debug", groups.Debug)
  Group.link("@label", groups.Label)
  hl("@include", { link = "@keyword" })
  Group.link("@exception", groups.Exception)

  Group.link("@type", groups.Type)
  Group.link("@type.builtin", groups.Type)
  Group.link("@type.qualifier", groups.Builtin)
  Group.link("@type.definition", groups.Type)
  hl("@type.javascript", { link = "@variable" })

  Group.link("@storageclass", groups.Keyword)
  Group.link("@attribute", groups.Function)
  hl("@field", { link = "@property" })
  Group.link("@property", groups.Property)

  Group.new("@variable", colors.variable)
  Group.link("@variable.builtin", groups.Variable)

  Group.link("@constant", groups.Constant)
  Group.link("@constant.builtin", groups.Constant)
  Group.link("@constant.macro", groups.Constant)

  Group.link("@namespace", groups.Namespace)
  Group.link("@symbol", groups.Identifier)

  Group.link("@text", groups.Normal)
  Group.new("@text.strong", colors.baseForeground, colors.none, styles.bold)
  Group.new("@text.emphasis", colors.white, colors.none, styles.bold)
  Group.link("@text.underline", groups.Underlined)
  Group.link("@text.strike", groups.Strikethrough)
  Group.link("@text.title", groups.Title)
  Group.link("@text.literal", groups.String)
  Group.link("@text.uri", groups.Underlined)
  Group.link("@text.math", groups.Special)
  Group.link("@text.environment", groups.Macro)
  Group.link("@text.environment.name", groups.Type)
  Group.link("@text.reference", groups.String)
  Group.link("@text.todo", groups.Todo)
  Group.new("@text.note", colors.cyan)
  Group.link("@text.warning", groups.Warn)
  Group.new("@text.danger", groups.Error)

  -- filetypes

  -- tsx
  Group.new("@constructor.tsx", colors.property)

  -- ecosystems

  -- treesitter-context
  Group.link("TreesitterContext", groups.CursorLine)
end
