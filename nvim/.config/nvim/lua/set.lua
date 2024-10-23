-- appearance
vim.opt.guicursor = ""
vim.opt.cursorcolumn = true
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.showmode = false -- dont show "INSERT"/"NORMAL"/etc. because Airline already shows this...
vim.opt.conceallevel = 1

vim.opt.signcolumn = 'yes' -- add additional column to the left of line numbers

vim.opt.number = true                  -- show line number
vim.opt.relativenumber = true          -- show relative numbers


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
