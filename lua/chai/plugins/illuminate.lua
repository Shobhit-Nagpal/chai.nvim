return function(_)
  local colors = require("colorbuddy.init").colors
  local Group = require("colorbuddy.init").Group
  local hl = require("chai.util").hl

  Group.new("IlluminatedWord", colors.none, colors.ignored)
  hl("IlluminatedCurWord", { link = "IlluminatedWord" })
  hl("IlluminatedWordText", { link = "IlluminatedWord" })
  hl("IlluminatedWordRead", { link = "IlluminatedWord" })
  hl("IlluminatedWordWrite", { link = "IlluminatedWord" })
end
