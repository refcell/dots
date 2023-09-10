-- Markdown Preview --
-- This requires installing glow --
-- https://github.com/charmbracelet/glow?tab=readme-ov-file#installation
return {
  "ellisonleao/glow.nvim",
  config = function()
    local float_width = math.floor(math.abs(vim.api.nvim_win_get_width(0) * 0.7))
    local float_height = math.floor(math.abs(vim.api.nvim_win_get_height(0) * 0.7))
    if float_width == 0 then
      float_width = 100
    end
    if float_height == 0 then
      float_height = 100
    end

    require("glow").setup({
      -- glow_path = "", -- will be filled automatically with your glow bin in $PATH, if any
      install_path = "~/.local/bin", -- default path for installing glow binary
      border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'},
      width = float_width,
      height = float_height,
    })
  end,
  cmd = "Glow",
};
