local chai_theme = require("chai.palette").themes

local chai = {}

chai.normal = {
  a = { bg = chai_theme.primary, fg = chai_theme.activeBackground },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.primary },
  c = { bg = chai_theme.activeBackground, fg = chai_theme.activeForeground },
}

chai.insert = {
  a = { bg = chai_theme.variable, fg = chai_theme.activeBackground },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.variable },
}

chai.command = {
  a = { bg = chai_theme.yellow, fg = chai_theme.activeBackground },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.yellow },
}

chai.visual = {
  a = { bg = chai_theme.magenta, fg = chai_theme.activeBackground },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.magenta },
}

chai.replace = {
  a = { bg = chai_theme.red, fg = chai_theme.activeBackground },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.red },
}

chai.terminal = {
  a = { bg = chai_theme.blue, fg = chai_theme.activeBackground },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.blue },
}

chai.inactive = {
  a = { bg = chai_theme.lowBackground, fg = chai_theme.ignored },
  b = { bg = chai_theme.lowActiveBackground, fg = chai_theme.ignored },
  c = { bg = chai_theme.background, fg = chai_theme.ignored },
}

return chai
