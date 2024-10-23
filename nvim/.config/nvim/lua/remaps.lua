local map = require('utils').map

map("n","<leader>t", ":split | terminal <CR>")
-- buffer mappings
map("n","gb",":bnext<CR>")
map("n","gB",":bprev<CR>")

-- movement mappings
map("n","<C-d>","<C-d>zz")
map("n","<C-u>","<C-u>zz")
map("n","<C-]>","<C-]>zz")
-- dont know why but this needs to be in reverse order to make sense to me
map("n",",",";")
map("n",";",",")
-- this makes sense on a german layout
map("n","#","*")
map("n","+","#")

map({"n","v"},"ge","$")
map({"n","v"},"ga","^")
-- map("c","<C-h>","<left>")
-- map("c","<C-j>","<down>")
-- map("c","<C-k>","<up>")
-- map("c","<C-l>","<right>")

-- Replace and toggles
-- add certain file type to argument list
map("n","<leader>af",[[:args `fd -t f -e -g '*' ./`<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>]])
--replace exact match in buffer
map("n","<leader>re",[[:%s/\<\>/gc<left><Left><Left><Left><Left>]])
--replace any match in buffer
map("n","<leader>ra",[[:%s//gc<left><Left><Left>]])

---- RC files
-- telescope
map("n","<leader>rct",":e ~/.config/nvim/after/plugin/telescope.lua<CR>")
-- zathurarc
map("n","<leader>rcz",":e ~/.config/zathura/zathurarc<CR>")
-- ranger.conf
map("n","<leader>rcr",":e ~/.config/ranger/rc.conf<CR>")
-- i3rc
map("n","<leader>rci",":e ~/.config/i3/config<CR>")
-- bashrc
map("n","<leader>rcb",":e ~/.bashrc<CR>")
-- bashaliases
map("n","<leader>rca",":e ~/.bash_aliases<CR>")

-- resizing windows
map("n","<leader>+",":vertical resize +5<CR>")
map("n","<leader>-",":vertical resize -5<CR>")
map("n","<leader>h-",":resize +5<CR>")
map("n","<leader>h+",":resize -5<CR>")
-- joining lines lets cursor stay in one place
map("n","J","mzJ`z")
-- add undo breakpoints to these signs
map("i",",",",<C-G>u")
map("i",".",".<C-G>u")
map("i","!","!<C-G>u")
map("i","?","?<C-G>u")
-- yank to clipboard
map({"n","v"},"<leader>y","+y")
-- put from last yank 
map("n","<leader>p","\"0p")
map("n","<leader>P","\"0P")
-- fast spell checking (this goes to last spell error, takes first suggestion
-- and jumps the cursor back to where it was)
map("i","<C-S>","<C-G>u<Esc>[s1z=`]a<C-G>u")

-- ctag updating
map("n","<f5>","<cmd>!ctags -R<CR>")
-- session remaps
map("n","<Leader>mks",[[:mks! ~/.nvim/sessions/]])
map("n","<Leader>ss",[[:so  ~/.nvim/sessions/]])
-- replace word under cursor
map("n","<Leader>rw",[[:%s/\<<C-R><C-W>\>/]])
map("n","<Leader>rW",[[:%s/\<<C-R><C-A>\>/]])

-- pandoc 
-- to markdown
map("n","<leader>ctm",":!pandoc % -t markdown_github+tex_math_dollars --wrap=none -o ./%:p:t:r.md<CR>")
map("n","<leader>ctg",":!python3 -m readme2tex --branch main --nocdn --svgdir=./doc/pictures/svgs --readme readme.md --output readme.md  ")
-- convert to latex
map("n","<leader>ctl",":!pandoc % -o ./%:p:t:r.tex<CR>")
-- convert to html
map("n","<leader>cth",":!pandoc % -o ./%:p:t:r.html<CR>")
-- convert to pdf
map("n","<leader>ctp",":!pandoc % --pdf-engine=xelatex -o ./%:p:t:r.pdf<CR>")
-- convert to pdf letter
map("n","<leader>ctL",":!pandoc % --pdf-engine=xelatex -o ./%:p:t:r.pdf --template=\"letter\"<CR>")

-- switching windows like a sane person
map('t',"<C-h>",[[<C-\><C-n><C-w>h]])
map('t',"<C-j>",[[<C-\><C-n><C-w>j]])
map('t',"<C-k>",[[<C-\><C-n><C-w>k]])
map('t',"<C-l>",[[<C-\><C-n><C-w>l]])

vim.cmd[[
augroup Terminal
    autocmd!
    autocmd TermOpen * setlocal nospell
    autocmd TermOpen,BufEnter term://* startinsert " automatically enter insert mode on entering the buffer. Who needs normal mode in terminal?
augroup END
]]
