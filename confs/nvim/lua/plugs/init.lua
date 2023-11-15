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

  require("dash"),

  require("plugs.markdown"),
  require("plugs.hop_plug"),
  require("plugs.heirline"),
  require("plugs.which"),
  require("plugs.theme"),
  require("plugs.overseer"),
  require("plugs.cmp"),
  require("plugs.illuminate"),
  require("plugs.cheatsheet"),
  require("plugs.trouble"),
  require("plugs.tabline"),
  require("plugs.syntax"),
  require("plugs.noice"),
  require("plugs.copilot"),
  require("plugs.lsplines"),
  require("plugs.neotree"),
  require("plugs.terminal"),
  require("plugs.crates_plug"),
};
