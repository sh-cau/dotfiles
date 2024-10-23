return {
    'mbbill/undotree',
    config = function()
        local map = require('utils').map

        vim.g.undotree_WindowLayout = 3
        map("n","<leader>ut",":UndotreeToggle<CR>")
    end
}
