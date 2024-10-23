return {
    'MortenStabenau/matlab-vim',
    config = function()
        local map = require('utils').map

        vim.g.matlab_default_mappings=0
        vim.g.matlab_executable='/home/sh/programs/MATLAB/R2023a/bin/matlab'
        vim.g.matlab_auto_start=0
        vim.g.matlab_panel_size=50

        vim.cmd [[
        augroup matlab
        autocmd!
        autocmd FileType matlab setlocal commentstring=%\ %s
        autocmd FileType matlab setlocal nospell
        augroup END
        ]]

        -- execute current line in matlab
        map("n","<leader>ms",":MatlabStartServer<CR>")
        map("n","<leader>mx",":MatlabStopServer<CR>")
        map("n","<leader>mb",":MatlabBreakpoint<CR>")
        map("n","<leader>mr",":MatlabRun<CR>")
        map("n","<leader>mc",":MatlabClearBreakpoints<CR>")
        map("n","<leader>md",":MatlabDoc<CR>")
    end
}
