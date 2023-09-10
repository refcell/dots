-- Cargo Helpers --

function CreatCargoVersionCallback(cargo)
  function LoadCargoVersion()
    if cargo.version == cargo.default then
      vim.fn.jobstart(
        "cargo --version | grep -Eo '[0-9]\\.[0-9]+\\.[0-9]+'",
        { on_stdout = CargoVersionCallback, stdout_buffered = true }
      )
    end
    pcall(vim.cmd.AlphaRedraw)
  end

  function CargoVersionCallback(job_id, data, event)
    if job_id > 0 then
      cargo.version = " v" .. data[1]
      pcall(vim.cmd.AlphaRedraw)
    end
  end

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = LoadCargoVersion,
  })
end

return CreatCargoVersionCallback;
