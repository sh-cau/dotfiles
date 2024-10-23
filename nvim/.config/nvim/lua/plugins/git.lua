return {
    {
        'junegunn/gv.vim',
        config = function()
            local map = require('utils').map
            map("n", "<leader>glf", [[:GV! --abbrev-commit --decorate --format=%ad\ %h%d\ %s\ (%an)<CR>]])
        end
    },
    {
        'tpope/vim-fugitive',
        config = function()
            local map = require('utils').map
            map("n", "<leader>gb", ":Git branch<CR>")
            map("n", "<leader>gs", ":Git<CR>")
            map("n", "<leader>gc", ":Git commit<CR>")
            map("n", "<leader>gd", ":Gvdiffsplit!<CR>")
            map("n", "<leader>gm", ":Git merge")
            map("n", "<leader>gf", ":Git fetch --all --prune <CR>")
            map("n", "<leader>gnb", ":Git switch -n ")
            map("n", "<leader>gpl", ":Git pull<CR>")
            map("n", "<leader>gps", ":Git push<CR>")
            map("n", "<leader>gri", ":Git rebase -i HEAD~")
            map("n", "<leader>gsu", ":Git submodule update --remote --recursive<CR>")
            map("n", "<leader>gxd",
                ":Git latexdiff --verbose --allow-spaces --math-markup=fine --graphics-markup=both --config=$LATEXDIFF_CONFIG/latexdiff.cfg --latexpand --keep-comments --latexpand --verbose --latexpand --explain --type=BOLD --no-cleanup --run-bibtex --output diff.pdf --main ARTICLE.tex OLD_TAG_OR_COMMIT -- ")
        end
    },
    {
        'rbong/vim-flog',
        config = function()
            local map = require('utils').map
            map("n", "<leader>glb", ":Flog<CR>")
        end
    },
    {
        'airblade/vim-gitgutter',
        config = function()
            local map = require('utils').map
            vim.g.gitgutter_preview_win_floating = 0
            map("n", "<leader>hc", [[<Plug>(GitGutterStageHunk) \| :Git commit<CR>]])
            map("n", "<leader>hs", "<Plug>(GitGutterStageHunk)<CR>")
        end
    }
}
