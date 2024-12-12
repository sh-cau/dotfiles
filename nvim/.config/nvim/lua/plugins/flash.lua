return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {
      modes = {
          search = {
              -- when `true`, flash will be activated during regular search by default.
              -- You can always toggle when searching with `require("flash").toggle()`
              enabled = false,
              highlight = { backdrop = false },
              jump = { history = true, register = true, nohlsearch = true },
          },
      }
  },
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
