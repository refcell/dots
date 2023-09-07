 -- Override NeoTree Position Config --
return {
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
            hide_hidden = false,
        },
    },
    window = { position = "right" },
  },
};
