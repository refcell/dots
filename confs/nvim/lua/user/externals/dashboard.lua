-- Dashboard Config --

local headers = require "user.headers"
math.randomseed(os.time())

local config = {
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    theme = 'hyper',
    config = function()
    require('dashboard').setup {
        shortcut = {
            { desc = string, group = 'highlight group', key = 'shortcut key', action = 'action when you press key' },
        },
        packages = { enable = true },
        project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
        mru = { limit = 10, icon = 'your icon', label = '', },
        footer = {},
    }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
        opts.section.header.val = headers[math.random(#headers)]
        return opts
    end,
  }
};

return config;

