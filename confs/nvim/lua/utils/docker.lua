-- Docker Helpers --

function CreatDockerVersionCallback(docker)
  function LoadDockerVersion()
    if docker.version == docker.default then
      vim.fn.jobstart(
        "docker version --format '{{.Server.Version}}'",
        { on_stdout = DockerVersionCallback, stdout_buffered = true }
      )
    end
    pcall(vim.cmd.AlphaRedraw)
  end

  function DockerVersionCallback(job_id, data, event)
    if job_id > 0 then
      docker.version = " v" .. data[1]
      pcall(vim.cmd.AlphaRedraw)
    end
  end

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = LoadDockerVersion,
  })
end

return CreatDockerVersionCallback;
