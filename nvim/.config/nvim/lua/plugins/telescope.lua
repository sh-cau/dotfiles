return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.6',
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-tree/nvim-web-devicons' },
        },
        config = function()
            local builtin = require('telescope.builtin')
            require('telescope').setup {
                defaults = {
                    file_ignore_patterns = {
                        '.git/', '.backup/', '*.png', '*.jpg', '*.jpeg', '*.gif', '*.ico', '*.svg', '*.pdf', '*.zip', '*.tar.gz', '*.tar.bz2', '*.tar.xz', '*.7z', '*.rar'
                    },
                },
                pickers = {
                    find_files = {
                        path_display = { shorten = 5, "truncate" } -- "hidden", "tail", "absolute", "smart", "{shorten=num}", "{truncate=num}"
                    },
                    buffers = {
                        initial_mode = "insert", -- "normal" or "insert"
                        sort_mru = true,
                        ignore_current_buffer = true,
                        previewer = false,
                        path_display = { shorten = 4 },
                        theme = "dropdown",
                        mappings = {
                            i = {
                                ["<c-d>"] = require('telescope.actions').delete_buffer,
                            },
                            n = {
                                ["d"] = require('telescope.actions').delete_buffer,
                            }
                        }
                    }
                },
                extensions = {
                    fzf = {
                        fuzzy = true,               -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true, -- override the file sorter
                        case_mode = "smart_case",   -- or "ignore_case" or "respect_case"
                    }
                }
            }

            local map = require('utils').map
            -- <leader>f_ mappings to find files
            map('n', '<leader>fd', function() builtin.find_files({ cwd = "$HOME/dotfiles/", prompt_title = "Find in dotfiles/", hidden = true }) end)
            map('n', '<leader>fD', function() builtin.find_files({ cwd = "$HOME/Dropbox/", prompt_title = "Find in Dropbox/", hidden = true }) end)
            map('n', '<leader>fe', function() builtin.find_files({ cwd = "/", prompt_title = "Find in /", hidden = true }) end)
            map('n', '<leader>fh', function() builtin.find_files({ cwd = "$HOME/", prompt_title = "Find in home/sh/", hidden = false }) end)
            map('n', '<leader>fr', function() builtin.find_files({ cwd = "$HOME/repos", prompt_title = "Find in home/sh/repos", hidden = false }) end)
            map('n', '<leader>fn', function() builtin.find_files({ cwd = "$HOME/.local/share/nvim/lazy/", prompt_title = "Find in neovim files", hidden = true }) end)
            map('n', '<leader>fP', function() builtin.find_files({ cwd = "$HOME/dotfiles/nvim/.config/nvim/after/plugin/", prompt_title = "Find in nvim/plugins/", hidden = true, follow = true }) end)
            map('n', '<leader>fp', function() builtin.find_files({ prompt_title = "Find in project/", hidden = true, follow = true }) end)
            map('n', '<leader>fu', function() builtin.find_files({ cwd = "/usr/", prompt_title = "Find in /", hidden = true }) end)
            map('n', '<leader>fw', function() builtin.find_files({ cwd = "$HOME/work/", prompt_title = "Find in work/", hidden = true }) end)
            map('n', '<leader>fC', function() builtin.find_files({ cwd = "$HOME/.config/", prompt_title = "Find in ~/.config/", hidden = true }) end)
            -- <leader>f_ mappings to find other things
            map('n', '<leader>fH', function() builtin.command_history({ prompt_title = "Command history" }) end)
            map('n', '<leader>fc', function() builtin.commands({ prompt_title = "Find command" }) end)
            map('n', '<leader>fb', function() builtin.buffers({ prompt_title = "Find buffers" }) end)
            map('n', '<leader>ff', function() builtin.live_grep({ prompt_title = "Find pattern in files (live)", hidden = true, follow = true, max_results = 25 }) end)
            map('n', '<leader>fk', function() builtin.keymaps({ prompt_title = "Find keymaps" }) end)
            map('n', '<leader>fm', function() builtin.man_pages({ prompt_title = "Find in man pages" }) end)
            map('n', '<leader>fo', function() builtin.oldfiles({ prompt_title = "Find in previously opened files" }) end)
            -- <leader>fl_ mappings to find lsp things
            map('n', '<leader>flr', function() builtin.lsp_references({ prompt_title = "Find references" }) end)
            map('n', '<leader>fli', function() builtin.lsp_incoming_calls({ prompt_title = "Find incoming calls" }) end)
            map('n', '<leader>flo', function() builtin.lsp_outgoing_calls({ prompt_title = "Find outgoing calls" }) end)
            map('n', '<leader>fld', function() builtin.lsp_definitions({ prompt_title = "Find definitions" }) end)
            --- gitlab
            map('n', '<leader>fgi', function() require('telescope').extensions.gitlab.issues({ fields = { state = "opened" } }) end)
            map('n', '<leader>fgm', function() require('telescope').extensions.gitlab.mrs({ fields = { state = "all" } }) end)
            -- mappings to do other stuff with telescope
            map('n', '<leader>fs', function() builtin.spell_suggest({ prompt_title = "Find spell suggestions" }) end)
            map('n', '<leader>fO', function() builtin.vim_options({ prompt_title = "Find vim options" }) end)
        end
    },
    {
        'lrfurtado/telescope-gitlab.nvim' ,
        config = function()
            require('telescope').load_extension('gitlab')
        end
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        config = function()
            require('telescope').load_extension('fzf')
        end
    },
}
