return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    ft = { "markdown" },
    config = function()
        local map = require('utils').map

        vim.g.mkdp_auto_start = 0
        vim.g.mkdp_auto_close = 0
        vim.g.mkdp_filetypes = {'markdown','vimwiki'}
        -- vim.g.mkdp_browserfunc= {'markdown','vimwiki'}

        map("n","<leader>mp",":MarkdownPreview<CR>")
    end
}
