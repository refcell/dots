-- Noice Config --

local config = {
  -- noice (cmd bar, notify, etc.)
    {
        "folke/noice.nvim",
        after = "nui.nvim",
        event = "VimEnter",
        config = function()
        require("noice").setup {
            notify = { enabled = false },
            messages = { enabled = false },
            lsp = {
                hover = {
                    enabled = false,
                },
                signature = {
                    enabled = false,
                },
            },
        }
        end,
    },
};

return config;

