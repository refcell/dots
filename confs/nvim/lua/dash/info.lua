-- Info Section --

local docker = {
  default = " Loading docker version... ",
  version = " Loading docker version... ",
}

local golang = {
  default = " Loading cargo version... ",
  version = " Loading cargo version... ",
}

local cargo = {
  default = " Loading cargo version... ",
  version = " Loading cargo version... ",
}

function infos()
  local datetime = os.date("   %A %m-%d-%Y")
  local lazy_stats = require("lazy").stats()
  local ms = (math.floor(lazy_stats.startuptime * 100 + 0.5) / 100)
  local version = vim.version()

  require("utils.docker")(docker)
  require("utils.cargo")(cargo)
  require("utils.golang")(golang)

  -- "Substitute" is light pink - replaced with white
  local datetime_hl = {
    { "white", 1,  4 },
    { "white", 5, 18 },
    { "WarningMsg", 28, 30 },
    { "white", 40, 60 },
  }

  local green_hl = { { "String", 0,  3 } }
  local blue_hl = { { "Function", 0, 3 } }
  local red_hl = { { "CursorLineNr", 0, 3 } }

  local stats = " " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " in " .. ms .. " ms"
  local version = " v" .. version.major .. "." .. version.minor .. "." .. version.patch

  return {
    {
      type = "text",
      val = {
        version,
        docker.version,
        golang.version,
        cargo.version,
        datetime .. "  " .. stats .. "     ",
      },
      opts = {
        shrink_margin = false,
        position = "center",
        hl = {
          green_hl,
          blue_hl,
          blue_hl,
          red_hl,
          datetime_hl,
        },
      },
    },
  }
end

return { type = "group", val = infos };
