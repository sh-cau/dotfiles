return {
    'kelly-lin/ranger.nvim',
    config = function()
        local map = require('utils').map


        require("ranger-nvim").setup({
            replace_netrw = false,
            ui = {
                height = 0.95 -- so I see the command line (due to airline I guess?)
            }
        })

        map("n", "<S-T>", "", {
            noremap = true,
            callback = function()
                require("ranger-nvim").open(true)
            end,
        })
    end
}
