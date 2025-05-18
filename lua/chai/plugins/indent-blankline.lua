local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group

Group.new("IndentBlanklineChar", colors.black)
Group.new("IndentBlanklineContextChar", colors.secondaryForeground)
Group.new("IndentBlanklineContextStart", colors.secondaryForeground)
Group.new("IndentBlanklineSpaceChar", colors.black)
Group.new("IndentBlanklineSpaceCharBlankline", colors.black)
