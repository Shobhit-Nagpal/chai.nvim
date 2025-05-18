return function(opts, value)
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local groups = require("colorbuddy.init").groups
  local normal = value.normal

  Group.new("NoiceCmdlineIcon", colors.yellow)
  Group.new("NoiceCmdlinePopup", colors.yellow)
  Group.new("NoiceCmdlinePopupBorder", colors.yellow)
  Group.new("NoiceLspProgressTitle", colors.activeForeground)
  Group.new("NoiceLspProgressSpinner", colors.primary)
  Group.new("NoiceLspProgressClient", colors.primary)
  Group.new("NoiceFormatProgressTodo", colors.activeForeground)
  Group.new("NoiceMini", colors.baseForeground)
  Group.new("NoiceVirtualText", groups.Search)

  if not opts.transparent_float_background then
    Group.new("NoiceMini", colors.baseForeground, normal.float_bg)
  end
end
