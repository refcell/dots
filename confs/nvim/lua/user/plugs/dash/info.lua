-- Info Section --

function infos()
  ---@diagnostic disable-next-line:undefined-field
  local datetime = os.date(" %A, %d %B %Y")
  local lazy_stats = require("lazy").stats()
  local ms = (math.floor(lazy_stats.startuptime * 100 + 0.5) / 100)
  local version = vim.version()
  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = function()
      pcall(vim.cmd.AlphaRedraw)
    end,
  })

  return {
    {
      type = "text",
      val = {
        datetime .. "                  ",
        " " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " in " .. ms .. " ms",
        " v" .. version.major .. "." .. version.minor .. "." .. version.patch,
      },
      opts = {
        position = "center",
        hl = "WarningMsg",
      },
    },
  }
end

return { type = "group", val = infos };
