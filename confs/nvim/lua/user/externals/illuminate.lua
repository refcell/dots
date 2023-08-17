-- Illuminate Config --
-- Highlight words under the cursor that match the provider regex --
local config = {
  {
    "rrethy/vim-illuminate",
    providers = {
        'lsp',
        'treesitter',
        'regex',
    },
  }
};

return config;

