return {
    'andymass/vim-matchup' , -- extends vim's "%" functionality
    config = function()
        vim.g.matchup_delim_stopline=500
        vim.g.matchup_matchparen_stopline=500
        vim.g.matchup_surround_enabled=1
        vim.g.matchup_override_vimtex=1
    end
}
