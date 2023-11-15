-- Github PRs Section --

local GITHUB_PR_INIT = " Loading github pull requests... "
local github_prs = GITHUB_PR_INIT

local ghlist = "gh pr list -R ethereum-optimism/optimism -L 1000 -a '@me' "
local ghjson = "--json number,headRefName,state,title "
local ghtemplate = "--template '{{range .}}{{tablerow (printf \"#%v\" .number) .title}}{{tablerow (printf \"- %v\" .state) .headRefName}}{{end}}' "
local ghgrep = "| grep '^'"

function github()
  function LoadGithubPrs()
    if github_prs == GITHUB_PR_INIT then
      vim.fn.jobstart(
        ghlist .. ghjson .. ghtemplate .. ghgrep,
        { on_stdout = GithubPrCallback, stdout_buffered = true }
      )
    end
    pcall(vim.cmd.AlphaRedraw)
  end

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = { "LazyVimStarted" },
    callback = LoadGithubPrs,
  })

  function GithubPrCallback(job_id, data, event)
    if job_id > 0 then
      github_prs = data
      pcall(vim.cmd.AlphaRedraw)
    end
  end

  return {
    {
      type = "text",
      val = github_prs,
      opts = {
        align_shortcut = "left",
        shrink_margin = false,
        position = "center",
        hl = "Question",
      },
    },
  }
end

return { type = "group", val = github };
