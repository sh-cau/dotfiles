return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({})
        end
    },
    {
        'williamboman/mason-lspconfig.nvim', -- bridges Mason with nvim-lspconfig
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'matlab_ls',
                    'bashls',
                    'lua_ls',
                    'clangd',
                    'ltex',
                    'marksman',
                    'gitlab_ci_ls',
                    'yamlls'
                },
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'hrsh7th/cmp-nvim-lsp'},
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            lspconfig.matlab_ls.setup({
                capabilities = capabilities,
                cmd = { "matlab-language-server", "--stdio" },
                filetypes = { "matlab" },
                settings = {
                    matlab = {
                        -- installPath = "/home/sh/programs/MATLAB/R2023a/",
                        telemetry = false,
                    },
                },
                single_file_support = false,
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
                filetypes = { "sh", "zsh", "bash" },
                settings = {
                    bashls = {
                        lint = {
                            enable = true,
                            diagnostics = true,
                            use = { "shellcheck" },
                        },
                    },
                },
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' } -- avoids warnings that vim is not found
                        }
                    }
                }
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
                filetype = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
            })
            local function quickfix() vim.lsp.buf.code_action({ apply = true }) end
            local map = require('utils').map
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    map('n', '<leader>qf', quickfix, { silent = true, noremap = true })
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if client.server_capabilities.hoverProvider then
                        map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.definitionProvider then
                        map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.declarationProvider then
                        map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.implementationProvider then
                        map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.typeDefinitionProvider then
                        map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.referencesProvider then
                        map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.signatureHelpProvider then
                        map('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.renameProvider then
                        map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.documentFormattingProvider then
                        map({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', {buffer=args.buf})
                    end
                    if client.server_capabilities.codeActionProvider then
                        map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', {buffer=args.buf})
                    end
                end
            })
        end
    },
}
