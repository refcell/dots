-- Highlight words under the cursor that match the provider regex
return {
    "rrethy/vim-illuminate",
    config = {
        under_cursor = true,
        providers = {
            'lsp',
            'treesitter',
            'regex',
        },
    },
};
