return {
    {
        'junegunn/gv.vim',
        keys = {
            {"<leader>glf", [[:GV! --abbrev-commit --decorate --follow --format=%ad\ %h%d\ %s\ (%an)<CR>]]},
        },
    },
    {
        'tpope/vim-fugitive',
        keys = {
            {"<leader>gb", ":Git branch<CR>"},
            {"<leader>gs", ":Git<CR>"},
            {"<leader>gc", ":Git commit<CR>"},
            {"<leader>gd", ":Gvdiffsplit!<CR>"},
            {"<leader>gm", ":Git merge"},
            {"<leader>gf", ":Git fetch --all --prune <CR>"},
            {"<leader>gnb", ":Git switch -n "},
            {"<leader>gpl", ":Git pull<CR>"},
            {"<leader>gps", ":Git push<CR>"},
            {"<leader>gpS", ":Git push --no-verify<CR>"},
            {"<leader>gri", ":Git rebase -i HEAD~"},
            {"<leader>gsu", ":Git submodule update --remote --recursive<CR>"},
            {"<leader>gxd", ":Git latexdiff --verbose --allow-spaces --math-markup=fine --graphics-markup=both --config=$LATEXDIFF_CONFIG/latexdiff.cfg --latexpand --keep-comments --latexpand --verbose --latexpand --explain --type=BOLD --no-cleanup --run-bibtex --output diff.pdf --main ARTICLE.tex OLD_TAG_OR_COMMIT -- "},
        }
    },
    {
        'rbong/vim-flog',
        keys = {
            { "<leader>glb", ":Flog<CR>"},
        },
    },
    {
        'airblade/vim-gitgutter',
        config = function()
            vim.g.gitgutter_preview_win_floating = 0
        end,
        keys = {
            {"<leader>hc", [[<Plug>(GitGutterStageHunk) \| :Git commit<CR>]]},
            {"<leader>hs", "<Plug>(GitGutterStageHunk)<CR>"},
        }
    }
}
