-- Configuration --
local config = {
  -- User imports --
  lsp = require "user.lsp",
  options = require "user.options",
  polish = require "user.polishing",
  -- plugins = require "user.externals",
  plugins = require "user.user_plugins",
  highlights = require "user.highlights",
  mappings = require "user.user_mappings",

  -- AstroNvim Repository Updates --
  updater = {
    remote = "origin",
    channel = "nightly",
    version = "latest",
    branch = "nightly",
    commit = nil,
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
    auto_quit = false,
  },

  -- Styling --
  colorscheme = "nightfox",
  icons = { VimIcon = "", },
  heirline = { separators = { left = { "", " " }, right = { " ", "" } } },

  -- Diagnostics Config --
  diagnostics = {
    virtual_lines = false,
    virtual_text = true,
    underline = true,
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin", "matchparen" },
      },
    },
  },
};

return config;

