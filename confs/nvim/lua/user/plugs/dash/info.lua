-- Info Section --

local DOCKER_VERSION_INIT = " Loading docker version... "
local docker_version = DOCKER_VERSION_INIT

function infos()
  ---@diagnostic disable-next-line:undefined-field
  local datetime = os.date(" %A, %d %B %Y")
  local lazy_stats = require("lazy").stats()
  local ms = (math.floor(lazy_stats.startuptime * 100 + 0.5) / 100)
  local version = vim.version()

  function LoadDockerVersion()
    if docker_version == DOCKER_VERSION_INIT then
      vim.fn.jobstart(
        "docker version --format '{{.Server.Version}}'",
        { on_stdout = VersionCallback, stdout_buffered = true }
      )
    end
    pcall(vim.cmd.AlphaRedraw)
  end

  function VersionCallback(job_id, data, event)
    if job_id > 0 then
      docker_version = " " .. data[1]
      pcall(vim.cmd.AlphaRedraw)
    end
  end

  -- Fetch the docker version in the background to prevent blocking --
  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = LoadDockerVersion,
  })

  return {
    {
      type = "text",
      val = {
        datetime .. "                  ",
        " " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " in " .. ms .. " ms",
        " v" .. version.major .. "." .. version.minor .. "." .. version.patch .. " | " .. docker_version,
      },
      opts = {
        position = "center",
        hl = "WarningMsg",
      },
    },
  }
end

return { type = "group", val = infos };
