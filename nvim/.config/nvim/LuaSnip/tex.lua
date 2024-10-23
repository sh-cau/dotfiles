local ls      = require("luasnip")
local s       = ls.snippet
-- nodes
local sn      = ls.snippet_node
local isn     = ls.indent_snippet_node
local t       = ls.text_node
local i       = ls.insert_node
local f       = ls.function_node
local c       = ls.choice_node
local d       = ls.dynamic_node
local r       = ls.restore_node
-- other
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

-- Some LaTeX-specific conditional expansion functions (requires VimTeX)
local tex_utils = {}
tex_utils.in_mathzone = function()  -- math context detection
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
tex_utils.in_text = function()
  return not tex_utils.in_mathzone()
end
tex_utils.in_comment = function()  -- comment detection
  return vim.fn['vimtex#syntax#in_comment']() == 1
end
tex_utils.in_env = function(name)  -- generic environment detection
    local is_inside = vim.fn['vimtex#env#is_inside'](name)
    return (is_inside[1] > 0 and is_inside[2] > 0)
end
-- A few concrete environments---adapt as needed
tex_utils.in_equation = function()  -- equation environment detection
    return tex_utils.in_env('equation')
end
tex_utils.in_itemize = function()  -- itemize environment detection
    return tex_utils.in_env('itemize')
end
tex_utils.in_tikz = function()  -- TikZ picture environment detection
    return tex_utils.in_env('tikzpicture')
end

local line_begin = require("luasnip.extras.expand_conditions").line_begin


return {

    -- fraction
    s(
        { trig = "frac", descr= "Fraction", snippetType = "autosnippet"},
        { t("\\frac{"), i(1), t("}{"), i(2), t("}") }
    ),

    -- boldface
    s(
        { trig = "bf", descr= "Boldface", snippetType = "autosnippet"},
        fmta("\\textbf{<>} <>", {i(1), i(0)})
    ),

    -- generic environment
    s(
        { trig = "beg", descr = "Generic Environment", snippetType = "autosnippet"},
        fmta(
            [[
               \begin{<>}
                   <>
               \end{<>}
               <>
            ]],
            {
                i(1,"environment"),
                i(2,"body"),
                rep(1),
                i(0)
            }
        ),
        {condition = line_begin}
    ),

    -- column
    s(
        { trig = "col", desc = "Column environment", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{column}{<>\textwidth}
                    <>
                \end{column}%
                <>
            ]],
            {
                i(1,"fraction"),
                i(2,"body"),
                i(0)
            }
        ),
        {condition = line_begin}
    ),
    -- figure
    s(
        { trig = "fig", desc = "Figure", snippetType = "autosnippet" },
        fmta(
            [[
                \begin{figure}
                    \centering
                    \includegraphics[width=<>\textwidth]{<>}
                    \caption{<>}\label{fig:<>}
                \end{figure}
                <>
            ]],
            {
                i(1,"fraction"),
                i(2,"path/to/figure.jpg"),
                i(3,"caption"),
                i(4,"label"),
                i(0)
            }
        ),
        {condition = line_begin}
    ),
    -- includegraphics
    s(
        { trig = "graph", desc = "Include graphics", snippetType = "autosnippet" },
        fmta(
            [[
                \includegraphics[width=<>\textwidth]{<>}
                <>
            ]],
            {
                i(1,"fraction"),
                i(2,"path/to/figure.jpg"),
                i(0)
            }
        ),
        {condition = line_begin}
    ),
}
