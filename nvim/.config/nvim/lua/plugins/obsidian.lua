return {
    'epwalsh/obsidian.nvim',
    version='*',
    -- lazy=true,
    ft={'markdown'},
    dependencies={
        -- Required
        {'nvim-lua/plenary.nvim'},
    },
    config = function()
        require("obsidian").setup({
            workspaces = {
                {
                    name = "work",
                    path = "~/work/notes/",
                },
                {
                    name = "personal",
                    path = "~/Dropbox/personal/notes/",
                },
            },
            preferred_link_style = "wiki", -- "wiki" | "markdown"
            new_notes_location = "notes_subdir", -- "current_dir" | "notes_subdir"
            completion = {
                nvim_cmp = true,
                min_chars = 1,
            },
            mappings = {
                -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
                ["gf"] = {
                    action = function()
                        return require("obsidian").util.gf_passthrough()
                    end,
                    opts = { noremap = false, expr = true, buffer = true },
                },
            },
            note_id_func = function(title)
                -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
                -- In this case a note with the title 'My new note' will be given an ID that looks
                -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
                local suffix = ""
                if title ~= nil then
                    -- If title is given, transform it into valid file name.
                    suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
                else
                    -- If title is nil, just add 4 random uppercase letters to the suffix.
                    for _ = 1, 4 do
                        suffix = suffix .. string.char(math.random(65, 90))
                    end
                end
                return tostring(os.date("%Y-%m-%d")) .. "_" .. suffix
            end,
            wiki_link_func = function(opts)
                if opts.id == nil then
                    return string.format("[[%s]]", opts.label)
                elseif opts.label ~= opts.id then
                    return string.format("[[%s|%s]]", opts.id, opts.label)
                else
                    return string.format("[[%s]]", opts.id)
                end
            end,
        })
        local map = require('utils').map
        map('n','<leader>oo',':ObsidianOpen<CR>', { noremap = true, silent = true })
        map('n','<leader>of',':ObsidianFollowLink<CR>', { noremap = true, silent = true })
        map('n','<leader>on',':ObsidianNew<CR>', { noremap = true, silent = true })
        map('n','<leader>oq',':ObsidianQuickSwitch<CR>', { noremap = true, silent = true })
        map('n','<leader>os',':ObsidianSearch<CR>', { noremap = true, silent = true })
        map('n','<leader>ot',':ObsidianTags<CR>', { noremap = true, silent = true })
        map('n','<leader>ow',':ObsidianWorkspace<CR>', { noremap = true, silent = true })
        map('n','<leader>or',':ObsidianRename<CR>', { noremap = true, silent = true })
    end
}
