-- Leap Config --
local config = {
  -- Leap
    {
        "ggandor/leap.nvim",
        lazy = false,
        config = function()
            local leap = require "leap"
            leap.setup {
                highlight_unlabeled_phase_one_targets = false,
            }
            leap.add_default_mappings()
        end,
    },
};

return config;

