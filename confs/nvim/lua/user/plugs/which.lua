-- WhichKey --
-- This plugin creates a popup with possible command suggestions --
-- see: https://github.com/folke/which-key.nvim --
return {
  "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
};
