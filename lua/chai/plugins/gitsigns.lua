-- automatically extend `diffview` by source code already

local Group = require("colorbuddy.init").Group
local groups = require("colorbuddy.init").groups

Group.new("GitSignsAdd", groups.DiffAdd)
Group.new("GitSignsChange", groups.DiffChange)
Group.new("GitSignsDelete", groups.DiffDelete)
