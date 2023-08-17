-- LSP Config --

local config = {
  -- LSP Lines Prettified Diagnostics --
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        lazy = false,
        after = "mason-lspconfig.nvim",
        module = "lsp_lines",
        config = function() require("lsp_lines").setup() end,
    },
};

return config;

