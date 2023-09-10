-- Noice (cmdline, messages, popupmenu) --
-- https://github.com/folke/noice.nvim --
return {
    "folke/noice.nvim",
    after = "nui.nvim",
    -- dependencies = {
    --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    --     "MunifTanjim/nui.nvim",
    --     -- OPTIONAL:
    --     --   `nvim-notify` is only needed, if you want to use the notification view.
    --     --   If not available, we use `mini` as the fallback
    --     "rcarriga/nvim-notify",
    -- },
    event = "VimEnter",
    config = function()
    require("noice").setup {
        presets = {
            command_palette = true, -- position the cmdline and popupmenu together
            lsp_doc_border = false, -- add a border to hover docs and signature help
        },
        notify = { enabled = false },
        messages = { enabled = false },
        -- cmdline = {
        --     enabled = true, -- enables the Noice cmdline UI
        --     view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
        --     opts = {},
        --     format = {
        --       cmdline = { pattern = "^:", icon = "", lang = "vim" },
        --       search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
        --       search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        --       filter = { pattern = "^:%s!", icon = "$", lang = "bash" },
        --       lua = { pattern = { "^:%slua%s+", "^:%slua%s=%s", "^:%s=%s" }, icon = "", lang = "lua" },
        --       help = { pattern = "^:%she?l?p?%s+", icon = "" },
        --       input = {},
        --     },
        --   },
        -- messages = {
        --     -- NOTE: If you enable messages, then the cmdline is enabled automatically.
        --     -- This is a current Neovim limitation.
        --     enabled = true, -- enables the Noice messages UI
        --     view = "notify", -- default view for messages
        --     view_error = "notify", -- view for errors
        --     view_warn = "notify", -- view for warnings
        --     view_history = "messages", -- view for :messages
        --     view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
        -- },
        -- popupmenu = {
        --     enabled = true, -- enables the Noice popupmenu UI
        --     ---@type 'nui'|'cmp'
        --     backend = "nui", -- backend to use to show regular cmdline completions
        --     ---@type NoicePopupmenuItemKind|false
        --     -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
        --     kind_icons = {}, -- set to `false` to disable icons
        -- },
        lsp = {
            -- override = {
            --   ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            --   ["vim.lsp.util.stylize_markdown"] = true,
            --   ["cmp.entry.get_documentation"] = true,
            -- },
            hover = {
                enabled = false,
            },
            signature = {
                enabled = false,
            },
        },
    }
    end,
};
