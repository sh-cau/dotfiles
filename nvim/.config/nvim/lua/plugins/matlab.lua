return {
    'MortenStabenau/matlab-vim',
    config = function()
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

    end,
    keys = {
        {"<leader>ms",":MatlabStartServer<CR>"},
        {"<leader>mx",":MatlabStopServer<CR>"},
        {"<leader>mb",":MatlabBreakpoint<CR>"},
        {"<leader>mr",":MatlabRun<CR>"},
        {"<leader>mc",":MatlabClearBreakpoints<CR>"},
        {"<leader>md",":MatlabDoc<CR>"},
    }
}
