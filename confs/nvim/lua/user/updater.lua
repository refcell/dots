-- Updater --
-- These are AstroNvim repository updates
local updater = {
  remote = "origin",
  channel = "nightly",
  version = "latest",
  branch = "nightly",
  commit = nil,
  pin_plugins = nil,
  skip_prompts = false,
  show_changelog = true,
  auto_quit = false,
};

return updater;
