-- Override Configs --

local config = {
    -- Override ToggleTerm Mapping --
    {
        "akinsho/toggleterm.nvim",
        opts = { open_mapping = [[<C-\>]] },
    },

    -- Override NeoTree Position Config
    {
        "nvim-neo-tree/neo-tree.nvim",
        keys = { { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true } },
        opts = {
        filesystem = {
            bind_to_cwd = false,
            follow_current_file = true,
            filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            },
        },
        window = { position = "right" },
        },
    },
};

return config;

