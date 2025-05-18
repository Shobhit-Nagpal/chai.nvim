return function(opts)
  local diagnostic_virtual_text_background = opts.diagnostic_virtual_text_background

  local Group = require("colorbuddy.init").Group
  local colors = require("colorbuddy.init").colors
  local groups = require("colorbuddy.init").groups
  local styles = require("colorbuddy.init").styles
  local hl = require("chai.util").hl

  -- diagnostics
  Group.new("DiagnosticError", colors.Error)
  Group.new("DiagnosticWarn", colors.Warn)
  Group.new("DiagnosticInfo", colors.Info)
  Group.new("DiagnosticHint", colors.Hint)
  -- NOTE: `styles.strikethrough` not working
  Group.new("DiagnosticDeprecated", groups.Comment, colors.none, styles.italic + styles.undercurl)
  Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl)
  Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl)
  Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl)
  Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl)

  Group.link("DiagnosticVirtualTextError", groups.DiagnosticError)
  Group.link("DiagnosticVirtualTextWarn", groups.DiagnosticWarn)
  Group.link("DiagnosticVirtualTextInfo", groups.DiagnosticInfo)
  Group.link("DiagnosticVirtualTextHint", groups.DiagnosticHint)
  if diagnostic_virtual_text_background then
    Group.new("DiagnosticVirtualTextError", groups.DiagnosticVirtualTextError, colors.Error:dark():dark():dark():dark())
    Group.new(
      "DiagnosticVirtualTextWarn",
      groups.DiagnosticVirtualTextWarn,
      colors.Warn:dark():dark():dark():dark():dark()
    )
    Group.new("DiagnosticVirtualTextInfo", groups.DiagnosticVirtualTextInfo, colors.Info:dark():dark():dark():dark())
    Group.new("DiagnosticVirtualTextHint", groups.DiagnosticVirtualTextHint, colors.Hint:dark():dark():dark())
  end

  Group.link("DiagnosticTextWarn", groups.Warn)

  -- lsp
  Group.new("LspReferenceRead", colors.none, colors.none, styles.underline)
  Group.link("LspReferenceText", groups.LspReferenceRead)
  Group.new("LspReferenceWrite", colors.none, colors.none, styles.underline)
  Group.new("LspFloatWinBorder", colors.primary)
  Group.new("LspLinesDiagBorder", colors.primary)
  Group.new("LspCodeLens", groups.Comment) -- lsp hint text, cmp
  Group.new("LspInfoBorder", groups.FloatBorder)

  -- lsp semantic tokens
  hl("@lsp.type.comment", { link = "@comment" })
  hl("@lsp.type.enum", { link = "@type" })
  hl("@lsp.type.macro", { link = "@constant" })
  hl("@lsp.type.parameter", { link = "@parameter" })
  hl("@lsp.type.variable", { link = "@variable" })
  hl("@lsp.type.namespace", { link = "@namespace" })
  hl("@lsp.type.property", { link = "@property" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.operator", { link = "@operator" })
  hl("@lsp.type.escapeSequence", { link = "@string.escape" })
  hl("@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  hl("@lsp.type.selfKeyword", { link = "@variable.builtin" })
  hl("@lsp.typemod.enum.defaultLibrary", { link = "@type.builtin" })
  hl("@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  hl("@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
end
