local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group

Group.new("GitGutterAdd", colors.green)
Group.new("GitGutterChange", colors.yellow)
Group.new("GitGutterDelete", colors.red)
Group.new("GitGutterChangeDelete", colors.red)
