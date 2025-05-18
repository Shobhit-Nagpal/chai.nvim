local colors = require("colorbuddy.init").colors
local Group = require("colorbuddy.init").Group
local groups = require("colorbuddy.init").groups
local styles = require("colorbuddy.init").styles

Group.new("NvimTreeFolderIcon", groups.Folder)
Group.new("NvimTreeRootFolder", groups.FolderRoot)
Group.new("NvimTreeImageFile", colors.orange)
Group.new("NvimTreeSpecialFile", colors.orange, colors.none, styles.bold + styles.underline)
