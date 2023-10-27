-- Automatc Language Server Protocol (so language support, diagnostcs and code completion)
-- gd in normal mode will go to the file where something is defined
-- <leader>d format file
-- <leader>k show floating info about the code under cursor

-- AutoComplete line 87
-- shift+space show completion menu
-- arrow keys to select from autocomplete
return {
    {
        'nvimtools/none-ls.nvim',
        lazy = false,
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
        init = function()
            vim.g.lsp_zero_extend_cmp = 0
            vim.g.lsp_zero_extend_lspconfig = 0
        end,
    },
    {
        'williamboman/mason.nvim',
        lazy = false,
        config = true,
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            local null_ls = require('null-ls')

            lsp_zero.extend_lspconfig()

            lsp_zero.on_attach(function(client, bufnr)
                local opts = { buffer = bufnr, remap = false };
                -- see :help lsp-zero-keybindings
                vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts);
                vim.keymap.set('n', '<leader>d', function() vim.lsp.buf.format({ async = true, timeout_ms = 10000 }) end,
                    opts);
                vim.keymap.set('n', '<leader>i', function() vim.lsp.buf.hover() end, opts);
                vim.keymap.set('n', '<leader>o', function() vim.diagnostic.open_float() end, opts);
            end)

            local sources = {
                null_ls.builtins.formatting.eslint,
                null_ls.builtins.code_actions.gitsigns,
            }

            null_ls.setup({ sources = sources })

            lsp_zero.format_on_save({
                format_opts = {
                    async = true,
                    timeout_ms = 10000,
                },
                servers = {
                    ['tsserver'] = { 'javascript', 'typescript' }
                }
            });

            require('mason-lspconfig').setup({
                ensure_installed = {},
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require('lspconfig').lua_ls.setup(lua_opts)
                    end,
                }
            })
        end
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_cmp()
            local cmp = require('cmp')

            cmp.setup({
                formatting = lsp_zero.cmp_format(),
                mapping = cmp.mapping.preset.insert({
                    ['<S-Space>'] = cmp.mapping(cmp.mapping.complete(), { "i", "n", "s" }),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                })
            })
        end
    },
}
