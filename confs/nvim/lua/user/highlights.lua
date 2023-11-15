-- Highlights --
local highlights = {
    -- NvChad-esq Telescope Theme for Catppuccin
        catppuccin = function()
            -- Pull in the catppuccin mocha colors
            local mocha = require("catppuccin.palettes").get_palette("mocha")
            local fg, bg = mocha.text, mocha.base
            local bg_alt = mocha.mantle
            local mauve = mocha.mauve
            local green = mocha.green

            -- return a table of highlights for telescope based on colors gotten from highlight groups
            return {
                TelescopeBorder = { fg = bg_alt, bg = bg },
                TelescopeNormal = { bg = bg },
                TelescopePreviewBorder = { fg = bg, bg = bg },
                TelescopePreviewNormal = { bg = bg },
                TelescopePreviewTitle = { fg = bg, bg = mauve },
                TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
                TelescopePromptNormal = { fg = fg, bg = bg_alt },
                TelescopePromptPrefix = { fg = green, bg = bg_alt },
                TelescopePromptTitle = { fg = bg, bg = green },
                TelescopeResultsBorder = { fg = bg, bg = bg },
                TelescopeResultsNormal = { bg = bg },
                TelescopeResultsTitle = { fg = bg, bg = bg },
            }
        end,
};

return highlights;
