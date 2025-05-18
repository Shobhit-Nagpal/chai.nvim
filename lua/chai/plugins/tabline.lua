-- NOTE: non tested
return function(_, value)
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local styles = require("colorbuddy.init").styles
  local normal = value.normal

  Group.new("TabLine", colors.secondaryForeground, colors.black1, styles.NONE, colors.secondaryForeground)
  Group.new("TabLineFill", colors.secondaryForeground, colors.black)
  Group.new("TabLineSel", colors.yellow, normal.bg)
  Group.new("TabLineSeparatorSel", colors.cyan, colors.none)
end

