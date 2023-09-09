return {
  -- Rust Tools --
  { "simrat39/rust-tools.nvim", lazy = false },

  -- Huff Syntax Highlighting --
  { "wuwe1/vim-huff",           lazy = false },

  -- Rainbow Brackets --
  { "p00f/nvim-ts-rainbow",     lazy = false },

  -- Wakatime
  { "wakatime/vim-wakatime" },

  -- Docker Tools --
  { "kkvh/vim-docker-tools", lazy = false },

  -- Disable nvim-dap
  { "mfussenegger/nvim-dap",        enabled = false },
  { "jay-babu/mason-nvim-dap.nvim", enabled = false },
  { "rcarriga/nvim-dap-ui",         enabled = false },

  require("user.plugs.hop"),
  require("user.plugs.heirline"),
  require("user.plugs.dash"),
  require("user.plugs.which"),
  require("user.plugs.theme"),
  require("user.plugs.overseer"),
  require("user.plugs.cmp"),
  require("user.plugs.illuminate"),
  require("user.plugs.cheatsheet"),
  require("user.plugs.trouble"),
  require("user.plugs.tabline"),
  require("user.plugs.syntax"),
  require("user.plugs.noice"),
  require("user.plugs.copilot"),
  require("user.plugs.lsplines"),
  require("user.plugs.neotree"),
  require("user.plugs.terminal"),
  require("user.plugs.crates"),

  -- Replaced leap with hop
  -- require "user.plugs.leap",
};
