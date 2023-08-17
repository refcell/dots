-- Polish --
local polishing = function()
    require("notify").setup { background_colour = "#000000" }
    require("nvim-treesitter.configs").setup {
        highlight = {
            enable = true,
        },
        rainbow = {
            enable = true,
            extended_mode = true,
        },
    }
end;

return polishing;
