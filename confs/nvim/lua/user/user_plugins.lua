-- Headers --
local headers = require "user.headers"
math.randomseed(os.time())

-- Load in the statusline config
local statusline_config = require "user.heirline"

-- Plugins --
local plugins = {
    -- Rust Tools --
    { "simrat39/rust-tools.nvim", lazy = false },
    -- Huff Syntax Highlighting --
    { "wuwe1/vim-huff",           lazy = false },
    -- Rainbow Brackets --
    { "p00f/nvim-ts-rainbow",     lazy = false },
    -- Wakatime
    { "wakatime/vim-wakatime" },

    -- Disable nvim-dap
    { "mfussenegger/nvim-dap",        enabled = false },
    { "jay-babu/mason-nvim-dap.nvim", enabled = false },
    { "rcarriga/nvim-dap-ui",         enabled = false },

    -- Add crates to cmp sources
	{
		"hrsh7th/nvim-cmp",
		opts = function(_, opts)
			opts.sources[#opts.sources + 1] = { name = "crates" }
		end,
	},

    -- Highlight words under the cursor that match the provider regex --
    {
        "rrethy/vim-illuminate",
        providers = {
            'lsp',
            'treesitter',
            'regex',
        },
    },

    -- [[
    --
    -- A cheatsheet for commands
    --
    -- ]]
    {
        'sudormrfbin/cheatsheet.nvim',
        requires = {
            {'nvim-telescope/telescope.nvim'},
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
        }
    },

    {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
        require("trouble").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        end
    },

    {
        'kdheepak/tabline.nvim',
        config = function()
            require'tabline'.setup {
                -- Defaults configuration options
                enable = true,
                options = {
                    section_separators = {'', ''},
                    component_separators = {'', ''},
                    max_bufferline_percent = 66,
                    show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
                    show_devicons = true, -- this shows devicons in buffer section
                    show_bufnr = false, -- this appends [bufnr] to buffer section,
                    show_filename_only = false, -- shows base filename only instead of relative path in filename
                    modified_icon = "+ ", -- change the default modified icon
                    modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
                    show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
                }
            }
            vim.cmd[[
                set guioptions-=e " Use showtabline in gui vim
                set sessionoptions+=tabpages,globals " store tabpages and globals in session
            ]]
        end,
        requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
    },

    {
        "ziontee113/syntax-tree-surfer",
        after = "nvim-treesitter",
        config = function()
            require("syntax-tree-surfer").setup {}

            local opts = { noremap = true, silent = true }

            -- Normal Mode Swapping:
            -- Swap The Master Node relative to the cursor with it's siblings, Dot Repeatable
            vim.keymap.set("n", "vU", function()
            vim.opt.opfunc = "v:lua.STSSwapUpNormal_Dot"
            return "g@l"
            end, { silent = true, expr = true })
            vim.keymap.set("n", "vD", function()
            vim.opt.opfunc = "v:lua.STSSwapDownNormal_Dot"
            return "g@l"
            end, { silent = true, expr = true })

            -- Swap Current Node at the Cursor with it's siblings, Dot Repeatable
            vim.keymap.set("n", "vd", function()
            vim.opt.opfunc = "v:lua.STSSwapCurrentNodeNextNormal_Dot"
            return "g@l"
            end, { silent = true, expr = true })
            vim.keymap.set("n", "vu", function()
            vim.opt.opfunc = "v:lua.STSSwapCurrentNodePrevNormal_Dot"
            return "g@l"
            end, { silent = true, expr = true })

            -- Visual Selection from Normal Mode
            vim.keymap.set("n", "vx", "<cmd>STSSelectMasterNode<cr>", opts)
            vim.keymap.set("n", "vn", "<cmd>STSSelectCurrentNode<cr>", opts)

            -- Select Nodes in Visual Mode
            vim.keymap.set("x", "J", "<cmd>STSSelectNextSiblingNode<cr>", opts)
            vim.keymap.set("x", "K", "<cmd>STSSelectPrevSiblingNode<cr>", opts)
            vim.keymap.set("x", "H", "<cmd>STSSelectParentNode<cr>", opts)
            vim.keymap.set("x", "L", "<cmd>STSSelectChildNode<cr>", opts)

            -- Swapping Nodes in Visual Mode
            vim.keymap.set("x", "<A-j>", "<cmd>STSSwapNextVisual<cr>", opts)
            vim.keymap.set("x", "<A-k>", "<cmd>STSSwapPrevVisual<cr>", opts)
        end,
    },

    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        theme = 'hyper',
        config = function()
        require('dashboard').setup {
            shortcut = {
                { desc = string, group = 'highlight group', key = 'shortcut key', action = 'action when you press key' },
            },
            packages = { enable = true },
            project = { enable = true, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
            mru = { limit = 10, icon = 'your icon', label = '', },
            footer = {},
        }
        end,
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },

    -- Alpha Dashboard Headers --
    {
        "goolord/alpha-nvim",
        opts = function(_, opts)
            opts.section.header.val = headers[math.random(#headers)]
            return opts
        end,
    },

    -- Override ToggleTerm Mapping --
    {
        "akinsho/toggleterm.nvim",
        opts = { open_mapping = [[<C-\>]] },
    },

    -- Override NeoTree Position Config
    {
        "nvim-neo-tree/neo-tree.nvim",
        keys = { { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true } },
        opts = {
        filesystem = {
            bind_to_cwd = false,
            follow_current_file = true,
            filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            },
        },
        window = { position = "right" },
        },
    },

    -- Override Heirline Config --
    { "rebelot/heirline.nvim", opts = statusline_config },

    -- Nightfox Theme --
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        config = function()
        require('nightfox').setup {
            options = {
                transparent = true,
            }
        }
        end,
    },

    -- LSP Lines Prettified Diagnostics --
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        lazy = false,
        after = "mason-lspconfig.nvim",
        module = "lsp_lines",
        config = function() require("lsp_lines").setup() end,
    },

    --[[
    --
    -- noice (cmdline, messages, popupmenu)
    -- https://github.com/folke/noice.nvim
    --
    --
    --]]
    {
        "folke/noice.nvim",
        after = "nui.nvim",
        event = "VimEnter",
        config = function()
        require("noice").setup {
            notify = { enabled = false },
            messages = { enabled = false },
            popupmenu = {
                enabled = true, -- enables the Noice popupmenu UI
                ---@type 'nui'|'cmp'
                backend = "nui", -- backend to use to show regular cmdline completions
                ---@type NoicePopupmenuItemKind|false
                -- Icons for completion item kinds (see defaults at noice.config.icons.kinds)
                kind_icons = {}, -- set to `false` to disable icons
            },
            commands = {
                history = {
                    -- options for the message history that you get with `:Noice`
                    view = "split",
                    opts = { enter = true, format = "details" },
                    filter = {
                        any = {
                        { event = "notify" },
                        { error = true },
                        { warning = true },
                        { event = "msg_show", kind = { "" } },
                        { event = "lsp", kind = "message" },
                        },
                    },
                },
                -- :Noice last
                last = {
                    view = "popup",
                    opts = { enter = true, format = "details" },
                    filter = {
                        any = {
                        { event = "notify" },
                        { error = true },
                        { warning = true },
                        { event = "msg_show", kind = { "" } },
                        { event = "lsp", kind = "message" },
                        },
                    },
                    filter_opts = { count = 1 },
                },
                -- :Noice errors
                errors = {
                    -- options for the message history that you get with `:Noice`
                    view = "popup",
                    opts = { enter = true, format = "details" },
                    filter = { error = true },
                    filter_opts = { reverse = true },
                },
            },
            lsp = {
                hover = {
                    enabled = false,
                },
                signature = {
                    enabled = false,
                },
            },
        }
        end,
    },

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

    -- Lua copilot
    {
        "zbirenbaum/copilot.lua",
        lazy = false,
        event = "VimEnter",
        config = function()
        vim.defer_fn(function()
            require("copilot").setup {
            panel = {
                enabled = true,
                auto_refresh = true,
                ---@type table<'accept'|'next'|'prev'|'dismiss', false|string>
                keymap = {
                jump_prev = "[[",
                jump_next = "]]",
                accept = "<CR>",
                refresh = "gr",
                open = "<M-CR>",
                },
            },
            suggestion = {
                enabled = true,
                auto_trigger = true,
                debounce = 50,
                keymap = {
                accept = "<M-l>",
                next = "<M-]>",
                prev = "<M-[>",
                dismiss = "<C-]>",
                },
            },
            }
        end, 100)
        end,
    },
};

return plugins;
