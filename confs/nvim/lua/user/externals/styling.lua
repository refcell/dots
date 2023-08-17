-- Styling Configuration --

-- Load in Statusline --
local statusline_config = require "user.heirline"

local config = {
  -- Rust Tools --
  { "simrat39/rust-tools.nvim", lazy = false },
  -- Huff Syntax Highlighting --
  { "wuwe1/vim-huff",           lazy = false },
  -- Rainbow Brackets --
  { "p00f/nvim-ts-rainbow",     lazy = false },
  -- Wakatime
  { "wakatime/vim-wakatime" },

  -- Nightfox Theme --
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
    require('nightfox').setup {
        options = {
            transparent = true,
        }
    }
    end,
  },

  -- Override Heirline Config --
  { "rebelot/heirline.nvim", opts = statusline_config },
};

return config;

