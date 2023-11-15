-- Dashboard Config --

vim.b.miniindentscope_disable = true

-- Automatically open neotree on startup --
local function open_tree()
  vim.cmd "Neotree"
  vim.cmd.wincmd "p"
end
vim.api.nvim_create_autocmd({ "User" }, { pattern = { "AlphaReady" }, callback = open_tree })

-- Builtin Neovim Highlight Groups --
-- https://neovim.io/doc/user/syntax.html#highlight-groups --

local dashconf = {
  layout = {
    { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.25) } },
    require("dash.header"),
    { type = "padding", val = 1 },
    { type = "padding", val = 1 },
    require("dash.info"),
    { type = "padding", val = 1 },
    require("dash.buttons"),
    { type = "padding", val = 1 },
    require("dash.docker"),
    { type = "padding", val = 1 },
    {
      type = "text",
      val = "󰓂 My Github PRs                                   ",
      opts = {
        position = "center",
        hl = "ModeMsg",
      },
    },
    require("dash.ghprs"),
  }
}

return {
    "goolord/alpha-nvim",
    config = function()
       require("alpha").setup(dashconf)
    end
};
