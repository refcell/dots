-- Section Header --

local headers = require "user.plugs.dash.headers"
math.randomseed(os.time())

return {
  type = "text",
  val = headers[1],
  opts = {
    position = "center",
    shrink_margin = false,
    hl = "WarningMsg",
  },
};
