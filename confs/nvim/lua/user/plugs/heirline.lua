-- Heirline Statusline Configs --
-- Overrides Heirline Defaults --
local statusline_config = function(_, opts)
  local status = require "astronvim.utils.status"
  -- local nfox = require("nightfox.palette").load("nightfox")
  local mocha = require("catppuccin.palettes").get_palette("mocha")
  opts.statusline = {
    -- statusline
    hl = { fg = "fg", bg = "bg" },
    status.component.mode {
      hl = { fg = "#000000" },
      mode_text = { icon = { kind = "VimIcon", padding = { right = 1, left = 1 } } },
      surround = {
        separator = "left",
        color = function()
          return {
            main = status.hl.mode_bg(),
            -- right = nfox.blue.dark,
          }
        end,
      },
      padding = { right = 1 },
      update = "ModeChanged",
    },
    status.component.git_branch {
      surround = {
        separator = "left",
        color = {
          main = mocha.surface0,
          right = mocha.green,
        },
        condition = status.condition.is_git_repo,
        padding = { left = 1 },
      },
      hl = { fg = mocha.green },
      padding = { right = 1 },
    },
    status.component.file_info {
      file_icon = { highlight = true, padding = { left = 0 } },
      filetype = {},
      filename = false,
      file_modified = false,
      surround = { separator = "left" },
      padding = { right = 1 },
    },
    status.component.git_diff {
      surround = { separator = "none" },
    },
    status.component.diagnostics {
      padding = { left = 1 },
      surround = { separator = "none" },
    },
    status.component.fill(),
    status.component.builder {
      { provider = "🧙" },
      surround = { separator = "none", color = { main = "bg" } },
      hl = {
				fg = mocha.overlay2,
			},
      -- padding = { right = 1 },
    },
    status.component.treesitter {
      str = { str = "🌲🪑", icon = { kind = "ActiveTS" }, padding = { left = 1 } },
      surround = {
        separator = "right",
        color = {
          main = mocha.lavender,
        },
        padding = { right = 1 },
      },
    },
    status.component.nav {
      surround = {
        separator = "right",
        -- color = {
        --   main = nfox.fg3,
        --   left = nfox.fg4,
        -- },
        padding = { left = 1 },
      },
      ruler = { padding = { left = 1 } },
    },
    status.component.mode {
      surround = {
        separator = "right",
        color = function()
          return {
            main = status.hl.mode_bg(),
            -- left = nfox.fg3,
          }
        end,
      },
      update = "ModeChanged",
    },
  }
  return opts
end

return { "rebelot/heirline.nvim", opts = statusline_config };
