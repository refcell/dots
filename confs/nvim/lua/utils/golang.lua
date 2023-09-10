-- Golang Helpers --

function CreatGolangVersionCallback(golang)
  function LoadGolangVersion()
    if golang.version == golang.default then
      vim.fn.jobstart(
        "go version | grep -Eo '[0-9]\\.[0-9]+\\.[0-9]+'",
        { on_stdout = GolangVersionCallback, stdout_buffered = true }
      )
    end
    pcall(vim.cmd.AlphaRedraw)
  end

  function GolangVersionCallback(job_id, data, event)
    if job_id > 0 then
      golang.version = " v" .. data[1]
      pcall(vim.cmd.AlphaRedraw)
    end
  end

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = LoadGolangVersion,
  })
end

return CreatGolangVersionCallback;
