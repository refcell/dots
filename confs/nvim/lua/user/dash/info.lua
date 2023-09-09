-- Info Section --

local DOCKER_VERSION_INIT = "   Loading docker version... "
local docker_version = DOCKER_VERSION_INIT

local docker = {
  default = "   Loading docker version... ",
  version = "   Loading docker version... ",
}

local golang = {
  default = "   Loading cargo version... ",
  version = "   Loading cargo version... ",
}

local cargo = {
  default = "   Loading cargo version... ",
  version = "   Loading cargo version... ",
}

function infos()
  local datetime = os.date("   %A %m-%d-%Y")
  local lazy_stats = require("lazy").stats()
  local ms = (math.floor(lazy_stats.startuptime * 100 + 0.5) / 100)
  local version = vim.version()

  require("user.utils.docker")(docker)
  require("user.utils.cargo")(cargo)
  require("user.utils.golang")(golang)

  -- "Substitute" is light pink - replaced with white
  local datetime_hl = {
    { "white", 1,  4 },
    { "white", 5, 18 },
    { "Comment", 28, 34 },
    { "Function", 34, 38 },
    { "white", 40, 60 },
  }

  local stats_hl = {
    { "WarningMsg", 1,  4 },
    { "white", 5, 28 },
    { "Comment", 28, 34 },
    { "String", 34, 38 },
    { "white", 40, 60 },
  }

  local versions_hl = {
    { "Function", 1,  4 },
    { "white", 5, 28 },
    { "Comment", 28, 34 },
    { "CursorLineNr", 34, 38 },
    { "white", 40, 60 },
  }

  local stats = "   " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " in " .. ms .. " ms"
  local version = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

  return {
    {
      type = "text",
      val = {
        datetime .. "   │    " .. docker.version .. "        ",
        stats .. "   │    " .. version,
        golang.version .. "             │    " .. cargo.version,
      },
      opts = {
        shrink_margin = false,
        position = "center",
        hl = { datetime_hl, stats_hl, versions_hl },
      },
    },
  }
end

return { type = "group", val = infos };
