-- Syntax Tree Surfer --
return {
  "ziontee113/syntax-tree-surfer",
  after = "nvim-treesitter",
  config = function()
      require("syntax-tree-surfer").setup {}

      local opts = { noremap = true, silent = true }

      -- Normal Mode Swapping:
      -- Swap The Master Node relative to the cursor with it's siblings, Dot Repeatable
      vim.keymap.set("n", "vU", function()
      vim.opt.opfunc = "v:lua.STSSwapUpNormal_Dot"
      return "g@l"
      end, { silent = true, expr = true })
      vim.keymap.set("n", "vD", function()
      vim.opt.opfunc = "v:lua.STSSwapDownNormal_Dot"
      return "g@l"
      end, { silent = true, expr = true })

      -- Swap Current Node at the Cursor with it's siblings, Dot Repeatable
      vim.keymap.set("n", "vd", function()
      vim.opt.opfunc = "v:lua.STSSwapCurrentNodeNextNormal_Dot"
      return "g@l"
      end, { silent = true, expr = true })
      vim.keymap.set("n", "vu", function()
      vim.opt.opfunc = "v:lua.STSSwapCurrentNodePrevNormal_Dot"
      return "g@l"
      end, { silent = true, expr = true })

      -- Visual Selection from Normal Mode
      vim.keymap.set("n", "vx", "<cmd>STSSelectMasterNode<cr>", opts)
      vim.keymap.set("n", "vn", "<cmd>STSSelectCurrentNode<cr>", opts)

      -- Select Nodes in Visual Mode
      vim.keymap.set("x", "J", "<cmd>STSSelectNextSiblingNode<cr>", opts)
      vim.keymap.set("x", "K", "<cmd>STSSelectPrevSiblingNode<cr>", opts)
      vim.keymap.set("x", "H", "<cmd>STSSelectParentNode<cr>", opts)
      vim.keymap.set("x", "L", "<cmd>STSSelectChildNode<cr>", opts)

      -- Swapping Nodes in Visual Mode
      vim.keymap.set("x", "<A-j>", "<cmd>STSSwapNextVisual<cr>", opts)
      vim.keymap.set("x", "<A-k>", "<cmd>STSSwapPrevVisual<cr>", opts)
  end,
};
