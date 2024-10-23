return {
    'mfussenegger/nvim-lint',
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        local map = require('utils').map

        require('lint').linters_by_ft = {
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            svelte = { "eslint_d" },
            kotlin = { "ktlint" },
            terraform = { "tflint" },
            ruby = { "standardrb" },
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                require('lint').try_lint()
            end,
        })

        map("n", "<leader>ll", function() require('lint').try_lint() end, { desc = "Trigger linting for current file" })
    end
}
