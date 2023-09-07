-- LSP Extensions --
local lsp = {
    -- Enable servers that you already have installed without mason.
    servers = {
        "nomic_solidity",
        "gopls",
    },

    formatting = {
        format_on_save = {
            enabled = true,
            allow_filetypes = {},
            ignore_filetypes = { "solidity" },
        },
        timeout_ms = 1000,
    },

    mappings = { n = {} },

    -- override the LSP setup handler function based on server name
    setup_handlers = {
        rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end
    },

    -- Add overrides for LSP server settings, the keys are the name of the server
    config = {
        yamlls = {
            settings = {
                yaml = {
                    schemas = {
                        ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
                        ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
                        ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
                    },
                },
            },
        },

        -- Nomic Solidity --
        nomic_solidity = {
            cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
            root_dir = require("lspconfig.util").root_pattern "foundry.toml",
            filetypes = { "solidity" },
            single_file_support = true,
        },

        -- Rust Analyzer --
        rust_analyzer = {
            settings = {
                ["rust-analyzer"] = { cargo = {
                    features = { "optimism" },
                } },
            },
        },
    },
};

return lsp;
