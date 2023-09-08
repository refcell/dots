-- Dashboard Config --

local section_header = require "user.plugs.dash.head"
local section_buttons = require "user.plugs.dash.buttons"
local section_info = require "user.plugs.dash.info"
local docker_info = require "user.plugs.dash.docker"
local github_prs = require "user.plugs.dash.ghprs"

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
    section_header,
    { type = "padding", val = 1 },
    { type = "padding", val = 1 },
    section_buttons,
    { type = "padding", val = 1 },
    section_info,
    { type = "padding", val = 1 },
    docker_info,
    { type = "padding", val = 1 },
    {
      type = "text",
      val = "󰓂 My Github PRs                                   ",
      opts = {
        position = "center",
        hl = "ModeMsg",
      },
    },
    github_prs,
  }
}

return {
    "goolord/alpha-nvim",
    config = function()
       require("alpha").setup(dashconf)
    end 
};
