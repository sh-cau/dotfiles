-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "

-- appearance
vim.opt.guicursor = ""
vim.opt.cursorcolumn = true
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.showmode = false -- dont show "INSERT"/"NORMAL"/etc. because Airline already shows this...
vim.opt.conceallevel = 1

vim.opt.signcolumn = 'yes' -- add additional column to the left of line numbers

vim.opt.number = true                  -- show line number
vim.opt.relativenumber = false


vim.opt.hlsearch = false               -- don't highlight last search results
vim.opt.incsearch = true               -- incremental search rules

-- editor behavior
vim.opt.scrolloff = 8                    -- always keep cursor away from ends while scrolling
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.formatoptions = 'tcqj'             -- better formatting
vim.opt.swapfile = false

vim.opt.sessionoptions = "blank,buffers,curdir,folds,help,winsize"       -- dont save tabpages in session

vim.opt.spell = true                   -- use spell checking
vim.opt.spelllang = 'de_de,en_us'      -- spell check languages
vim.opt.spellsuggest = 'best,5'

vim.opt.splitbelow = true              -- open new windows below 
vim.opt.splitright= true              -- open new windows to the right
vim.opt.switchbuf='useopen,usetab'     -- better behavior for the quickfix window and :sb

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 10

vim.opt.undolevels = 10000
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undo"

vim.opt.whichwrap = "<,>,h,l,b,s"             -- allow going to next line on reaching the end of a line with arrow keys an h and l
vim.opt.wildignore = "**/.git/*"
vim.opt.wildmode = "longest,list,full"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
