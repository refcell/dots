-- Highlights --
local highlights = {
    nightfox = function()
    -- Pull in the nightfox colors
    local nfox = require("nightfox.palette").load("nightfox")
    -- print(vim.inspect(nfox))
    local fg = nfox.fg0
    local bg = nfox.bg0
    local bg1 = nfox.bg1
    local bg2 = nfox.bg2
    local green = nfox.green.base

    -- return a table of highlights for telescope based on colors gotten from highlight groups
    return {
        TelescopeBorder = { fg = bg1, bg = bg },
        TelescopeNormal = { bg = bg },
        TelescopePreviewBorder = { fg = bg, bg = bg },
        TelescopePreviewNormal = { bg = bg },
        TelescopePreviewTitle = { fg = bg, bg = bg2 },
        TelescopePromptBorder = { fg = bg1, bg = bg1 },
        TelescopePromptNormal = { fg = fg, bg = bg1 },
        TelescopePromptPrefix = { fg = green, bg = bg1 },
        TelescopePromptTitle = { fg = bg, bg = green },
        TelescopeResultsBorder = { fg = bg, bg = bg },
        TelescopeResultsNormal = { bg = bg },
        TelescopeResultsTitle = { fg = bg, bg = bg },
    }
    end,
};

return highlights;
