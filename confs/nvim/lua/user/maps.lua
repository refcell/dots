-- Mappings --
local mappings = {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>bb"] = { "]b", desc = "Next Buffer"},
        ["<leader>bT"] = { "]t", desc = "Next Tab"},
        ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
        ["<leader>be"] = { "<cmd>e<cr>", desc = "Refresh buffer (non-force)" },
        ["<leader>br"] = { "<cmd>bufdo e<cr>", desc = "Refresh all buffers (non-force)" },
        ["<leader>bf"] = { "<cmd>e!<cr>", desc = "Force refresh buffer" },
        ["<leader>ba"] = { "<cmd>bufdo e!<cr>", desc = "Force refresh all buffers" },
        ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
        ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

        -- Hot Reloading --
        ["<leader>pb"] = { "<cmd>AstroReload<cr>", desc = "Hot Reload Astronvim" },

        -- Markdown Preview --
        ["<leader>mp"] = { "<cmd>Glow<cr>", desc = "Markdown Preview" },
        ["<leader>mc"] = { "<cmd>Glow!<cr>", desc = "Close Markdown Preview" },

        ["<leader>c"] = {
            function()
              local bufs = vim.fn.getbufinfo { buflisted = true }
              require("astronvim.utils.buffer").close(0)
              if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
            end,
            desc = "Close buffer",
        },

        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = { name = "Buffers" },

        -- ToggleTerm bindings
        ["<C-\\>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

        -- ctrl+D / ctrl+U to scroll up and down --
        ["<C-d>"] = { "<C-d>zz", desc = "Scroll one half page down" },
        ["<C-u>"] = { "<C-u>zz", desc = "Scroll one half page up" },

        -- LSP Lines toggle --
        ["<leader>1"] = {
            function()
                require("lsp_lines").toggle()
                local virtual_lines_enabled = vim.diagnostic.config().virtual_lines
                vim.diagnostic.config { virtual_text = not virtual_lines_enabled }
            end,
            desc = "Toggle LSP Lines diagnostics",
        },

        -- Grep in file --
        ["<leader>fv"] = {
            function() require("telescope.builtin").current_buffer_fuzzy_find() end,
            desc = "Search words in file",
        },

        -- Illuminate words under cursor --
        ["<leader>fi"] = {
            function() require("illuminate").next_reference { wrap = true } end,
            desc = "Illuminate words under cursor",
        },

        -- Copilot Mappings --
        ["<C-c>"] = { "<cmd>Copilot auth<cr>", desc = "Authenticate with Copilot" },
        ["<C-s>"] = { "<cmd>Copilot auth signout<cr>", desc = "Sign out of Copilot" },
        ["<C-p>"] = { "<cmd>Copilot panel<cr>", desc = "Open the copilot panel" },

        -- Telescope Shortcuts --
        ["<C-t>"] = { "<cmd>Telescope<cr>", desc = "Telescope" },
        ["<C-g>"] = { "<cmd>Telescope git_status<cr>", desc = "Telescope git status" },
        ["<C-r>"] = { "<cmd>Telescope git_branches<cr>", desc = "Telescope git branch" },
        ["<C-m>"] = { "<cmd>Telescope git_commits<cr>", desc = "Telescope git commits" },
        ["<C-b>"] = { "<cmd>Telescope buffers previewer=false<cr>", desc = "Telescope preview buffers" },

        -- Rust Tools / Crates
		["<leader>r"] = { name = "Rust Tools" },
		["<leader>rt"] = { "<cmd>RustOpenCargo<cr>", desc = "Open Cargo.toml" },
		["<leader>rp"] = { "<cmd>RustParentModule<cr>", desc = "Go to parent module" },
		["<leader>re"] = { "<cmd>RustExpandMacro<cr>", desc = "Expand macro (recursively)" },
		["<leader>rr"] = { "<cmd>RustRunnables<cr>", desc = "Open Runnables" },
		["<leader>rc"] = { name = "Crate Options" },
		["<leader>rcd"] = {
			function()
				require("crates").open_documentation()
			end,
			desc = "Open Crate Docs",
		},
		["<leader>rcp"] = {
			function()
				require("crates").show_popup()
			end,
			desc = "Crate Information",
		},
		["<leader>rcf"] = {
			function()
				require("crates").show_features_popup()
			end,
			desc = "Crate Features",
		},
		["<leader>rcv"] = {
			function()
				require("crates").show_versions_popup()
			end,
			desc = "Crate Versions",
		},

        ["s"] = {
			function()
				local hop = require("hop")
				local directions = require("hop.hint").HintDirection
				hop.hint_char1({ direction = directions.AFTER_CURSOR })
			end,
		},
		["S"] = {
			function()
				local hop = require("hop")
				local directions = require("hop.hint").HintDirection
				hop.hint_char1({ direction = directions.BEFORE_CURSOR })
			end,
		},
    },
    i = {
        -- Copilot: Accept suggestion
        ["<M-Tab>"] = {
        function() require("copilot.suggestion").accept() end,
        desc = "[copilot] accept suggestion",
        },
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    },
};

return mappings;
