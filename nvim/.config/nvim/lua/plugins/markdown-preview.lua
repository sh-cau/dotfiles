return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    ft = { "markdown" },
    config = function()
        vim.g.mkdp_auto_start = 0
        vim.g.mkdp_auto_close = 0
        vim.g.mkdp_filetypes = {'markdown','vimwiki'}
        -- vim.g.mkdp_browserfunc= {'markdown','vimwiki'}
    end,
    keys = {
        {"<leader>mp",":MarkdownPreview<CR>"},
    }
}
