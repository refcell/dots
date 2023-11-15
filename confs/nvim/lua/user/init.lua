-- Configuration --
local config = {
  plugins = require("plugs"),

  lsp = require("user.lsp"),
  mappings = require("user.maps"),
  updater = require("user.updater"),
  options = require("user.options"),
  polish = require("user.polishing"),
  highlights = require("user.highlights"),

  -- Styling --
  colorscheme = "catppuccin",
  icons = { VimIcon = "", },
  -- heirline = { separators = { left = { "", " " }, right = { " ", "" } } },
};

return config;
