return {
    'voldikss/vim-translator',
    config = function()
        vim.g.translator_source_lang = 'de'
        vim.g.translator_target_lang = 'en'
        vim.g.translator_default_engines = {'google'}
    end,
    keys = {
        {"<C-t>",":TranslateR<CR>"},
        {"<C-z>",":TranslateR!<CR>"},
        {"<C-t>",":TranslateR<CR>"},
        {"<C-z>",":TranslateR!<CR>"},
        {"<C-t>","<Esc>viw:TranslateR<CR> "},
        {"<C-z>","<Esc>viw:TranslateR!<CR> "},
    },
}
