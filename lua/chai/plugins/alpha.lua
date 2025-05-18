return function(_)
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local groups = require("colorbuddy.init").groups

  Group.new("AlphaButton", groups.Normal)
  Group.new("AlphaButtons", groups.AlphaButton)
  Group.new("AlphaShortcut", colors.orange)
  Group.new("AlphaHeader", colors.primary)
  Group.new("AlphaFooter", colors.blue)
end
