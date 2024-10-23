return {
    'L3MON4D3/LuaSnip',
    version = 'v2.*',
    dependencies = {
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
    },
    build = 'make install_jsregexp',
    config = function()
        local ls      = require("luasnip")
        local s       = ls.snippet
        local sn      = ls.snippet_node
        local isn     = ls.indent_snippet_node
        local t       = ls.text_node
        local i       = ls.insert_node
        local f       = ls.function_node
        local c       = ls.choice_node
        local d       = ls.dynamic_node
        local r       = ls.restore_node
        local events  = require("luasnip.util.events")
        local ai      = require("luasnip.nodes.absolute_indexer")
        local extras  = require("luasnip.extras")
        local l       = extras.lambda
        local rep     = extras.rep
        local p       = extras.partial
        local m       = extras.match
        local n       = extras.nonempty
        local dl      = extras.dynamic_lambda
        local fmt     = require("luasnip.extras.fmt").fmt
        local fmta    = require("luasnip.extras.fmt").fmta
        local conds   = require("luasnip.extras.expand_conditions")
        local postfix = require("luasnip.extras.postfix").postfix
        local types   = require("luasnip.util.types")
        local parse   = require("luasnip.util.parser").parse_snippet
        local ms      = ls.multi_snippet
        local k       = require("luasnip.nodes.key_indexer").new_key

        require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip/" })
        require("luasnip.loaders.from_vscode").lazy_load()

        require("luasnip").config.set_config({
            enable_autosnippets = true,
            store_selection_keys = "<Tab>",
        })

        vim.cmd [[
        " Expand or jump in insert mode
        imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'

        " Jump forward through tabstops in visual mode
        smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

        " Jump backward through snippet tabstops with Shift-Tab (for example)
        imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
        smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
        ]]
    end
}
