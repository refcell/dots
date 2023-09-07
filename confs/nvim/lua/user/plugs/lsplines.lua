-- LSP Lines Prettified Diagnostics --
return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  lazy = false,
  after = "mason-lspconfig.nvim",
  module = "lsp_lines",
  config = function() require("lsp_lines").setup() end,
};
