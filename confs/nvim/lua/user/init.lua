-- Configuration --
local config = {
  lsp = require "user.lsp",
  options = require "user.options",
  polish = require "user.polishing",
  plugins = require "user.plugs",
  highlights = require "user.highlights",
  mappings = require "user.user_mappings",
  updater = require "user.updater",

  -- Styling --
  colorscheme = "catppuccin",
  icons = { VimIcon = "", },
  heirline = { separators = { left = { "", " " }, right = { " ", "" } } },
};

return config;
