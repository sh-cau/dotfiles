return {
    'moll/vim-bbye',
    config = function()
        local map = require('utils').map

        map("n","<leader>q",":Bdelete<CR>")
        map("n","<leader>Q",":Bwipeout<CR>")
    end
}
