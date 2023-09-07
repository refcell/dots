-- Lazy Config --
-- automatically picked up by astronvim --
local lazy = {
  defaults = { lazy = true },
  performance = {
    rtp = {
      disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin", "matchparen" },
    },
  },
};

return lazy;
