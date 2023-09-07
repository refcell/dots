-- Lua Copilot --
return {
  "zbirenbaum/copilot.lua",
  lazy = false,
  event = "VimEnter",
  config = function()
  vim.defer_fn(function()
      require("copilot").setup {
      panel = {
          enabled = true,
          auto_refresh = true,
          ---@type table<'accept'|'next'|'prev'|'dismiss', false|string>
          keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
          },
      },
      suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 50,
          keymap = {
          accept = "<M-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
          },
      },
      }
  end, 100)
  end,
};
