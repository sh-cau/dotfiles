return {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
        local rosePine = require("rose-pine")
        rosePine.setup({
            variant = "auto", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive_windows = false,
            extend_background_behind_borders = true,
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
            groups = {
                border = "muted",
                link = "iris",
                panel = "surface",
                error = "love",
                hint = "iris",
                info = "foam",
                warn = "gold",
                git_add = "foam",
                git_change = "rose",
                git_delete = "love",
                git_dirty = "rose",
                git_ignore = "muted",
                git_merge = "iris",
                git_rename = "pine",
                git_stage = "iris",
                git_text = "rose",
                git_untracked = "subtle",
                headings = {
                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },
                -- Alternatively, set all headings at once.
                -- headings = "subtle",
            },
            highlight_groups = {
                Normal = { bg = "none" },
                NormalFloat = { bg = "none" },
                Visual = { bg = "muted" },
                -- for vim_current_word
                CurrentWord = { bold = true },
                CurrentWordTwins = { reverse = true },
            },
            before_highlight = function(group, highlight, palette)
                -- Disable all undercurls
                -- if highlight.undercurl then
                --     highlight.undercurl = false
                -- end
                --
                -- Change palette colour
                -- if highlight.fg == palette.pine then
                --     highlight.fg = palette.foam
                -- end
            end,
        })
        function SetColorScheme(color_)
            local color = color_ or "rose-pine"
            vim.cmd.colorscheme(color)
        end

        SetColorScheme('rose-pine-moon')
    end
}
