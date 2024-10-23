return {
    'voldikss/vim-translator',
    config = function()
        local map = require('utils').map

        vim.g.translator_source_lang = 'de'
        vim.g.translator_target_lang = 'en'
        vim.g.translator_default_engines = {'google'}

        map("n","<C-t>",":TranslateR<CR>")
        map("n","<C-z>",":TranslateR!<CR>")
        map("v","<C-t>",":TranslateR<CR>")
        map("v","<C-z>",":TranslateR!<CR>")
        map("i","<C-t>","<Esc>viw:TranslateR<CR> ")
        map("i","<C-z>","<Esc>viw:TranslateR!<CR> ")
    end
}
