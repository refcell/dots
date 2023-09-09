-- Docker Section --

local DOCKER_CONTAINER_INIT = " Loading docker containers... "
local docker_containers = DOCKER_CONTAINER_INIT

function docker()
  function LoadDockerContainers()
    if docker_containers == DOCKER_CONTAINER_INIT then
      vim.fn.jobstart(
        "docker ps --format 'table {{.Image}}\t{{.ID}}\t{{.Status}}'",
        { on_stdout = ContainerCallback, stdout_buffered = true }
      )
    end
    pcall(vim.cmd.AlphaRedraw)
  end

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = LoadDockerContainers,
  })

  function ContainerCallback(job_id, data, event)
    if job_id > 0 then
      docker_containers = data
      pcall(vim.cmd.AlphaRedraw)
    end
  end

  return {
    {
      type = "text",
      val = docker_containers,
      opts = {
        shrink_margin = false,
        position = "center",
        hl = "SpecialComment",
      },
    },
  }
end

return { type = "group", val = docker };
